

#### Running Tests

Install `entr` `bats` `bats-assert` `bats-support` `bats-file` `bats-mock` 

```
find | entr ./node_modules/bats/bin/bats -r ./helpers/tests
```