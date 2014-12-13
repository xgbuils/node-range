# range - A simple library for range(a, b, step).

range.js is a Node library approximation of Python's `range()` function.

# EXAMPLE

```
$ node
> var range = require("range");
> range.range(0, 20);
[ 0,
  1,
  2,
  3,
  4,
  5,
  6,
  7,
  8,
  9,
  10,
  11,
  12,
  13,
  14,
  15,
  16,
  17,
  18,
  19 ]
> range.range(0, 20, 2);
[ 0,
  2,
  4,
  6,
  8,
  10,
  12,
  14,
  16,
  18 ]
```

# HOMEPAGE

https://github.com/mcandre/node-range

# NPM

https://www.npmjs.com/package/range

# LICENSE

FreeBSD

# REQUIREMENTS

* [Node.js](http://nodejs.org/) 0.8+

## Optional

* [Ruby](https://www.ruby-lang.org/) 2+
* [Bundler](http://bundler.io/)
* [Cucumber](http://cukes.info/)
* [Guard](http://guardgem.org/)
* [aspelllint](https://github.com/mcandre/aspelllint)

# DEVELOPMENT

## Test

Ensure the example script works as expected:

```
$ cucumber 
Feature: Run example tests

  Scenario: Running example tests            # features/run_example_tests.feature:3
    Given the program has finished           # features/step_definitions/steps.rb:1
    Then the output is correct for each test # features/step_definitions/steps.rb:5

1 scenario (1 passed)
2 steps (2 passed)
0m2.454s
```

## Lint

Keep the code tidy:

```
$ grunt lint
```

## Spell Check

```
$ aspelllint
...
```

## Local CI

Guard can automatically run testing when the code changes:

```
$ bundle
$ guard -G Guardfile-cucumber
...
```

Guard can automatically lint when the code changes:

```
$ bundle
$ guard -G Guardfile-lint
...
```

## Git Hooks

See `hooks/`.
