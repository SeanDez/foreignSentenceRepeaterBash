#!/usr/bin/env bats

# ---------------- Library Imports
# during runtime, bats auto-appends .bash. It does not overlook extensions already written!
load "../node_modules/bats-assert/load"
load "../node_modules/bats-support/load"
load "../node_modules/bats-file/load"
load "batsMock/stub" # saved via git submodule into this folder




function setup() {
   echo
}



@test 'describe test for assert_equal()' {
   assert_equal 'a' 'b'

   # On failure, the expected and actual values are displayed.
   # -- values do not equal --
   # expected : want
   # actual   : have
   # --
}



# test an output
# [ "$output" = "some value" ]

# test a status (?)
# [ "$status" -eq 0 ]