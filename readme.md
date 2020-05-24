

### Setup

The configuration process will guide you on setting up a Google Cloud role and enabling the correct APIs. Run the following command in the project root to launch the setup wizard:

```
./runScript.sh
```



#### Running Tests

Install `entr` `bats` `bats-assert` `bats-support` `bats-file` `bats-mock` 

```
find | entr ./node_modules/bats/bin/bats -r ./helpers/tests
```