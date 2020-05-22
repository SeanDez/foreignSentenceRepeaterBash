#!/usr/bin/env bats

# ---------------- Library Imports
# during runtime, bats auto-appends .bash. It does not overlook extensions already written!
# with load keyword, actual folder for this file is the cwd
load "../../node_modules/bats-assert/load"
load "../../node_modules/bats-support/load"
load "../../node_modules/bats-file/load"
load "batsMock/stub" # saved via git submodule into this folder

# project root is the cwd when using source
source ./helpers/helpers.sh


function setup() {
   echo
}

@test "a/b matcher to ensure the asserts are working" {
   assert_equal "a" "a"
   # assert_equal "a" "b"
   
   # On failure, the expected and actual values are displayed.
   # -- values do not equal --
   # expected : want
   # actual   : have
   # --
}


@test 'createParentFolder' {
   # setup
   # create a local folder "createdForTest"
   createParentFolder "createdForTest"
   
   # assert
   assert_file_exist ./createdForTest

   # teardown
   rmdir ./createdForTest

}



# test an output
# [ "$output" = "some value" ]

# test a status (?)
# [ "$status" -eq 0 ]