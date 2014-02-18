# range - A simple library for range(a, b, step).

# EXAMPLE

    $ npm install
    $ npm test
    
    > range@0.0.2 test /Users/apennebaker/Desktop/src/node-range
    > grunt
    
    Running "exec:backgroundServer" (exec) task
    
    Running "exec:waitForServer" (exec) task
    Server running at http://127.0.0.1:8124/
    
    Running "exec:loadPage" (exec) task
    1
    2
    Fizz
    4
    Buzz
    Fizz
    7
    8
    Fizz
    Buzz
    11
    Fizz
    13
    14
    FizzBuzz
    ...
    98
    Fizz
    Buzz
    
    Running "exec:killServer" (exec) task
    
    Done, without errors.

# REQUIREMENTS

* [Node.js](http://nodejs.org/)

## Optional

* [Ruby](https://www.ruby-lang.org/) 2+
* [Bundler](http://bundler.io/)
* [Cucumber](http://cukes.info/)
* [Guard](http://guardgem.org/)

# TESTING

Ensure the example script works as expected:

    $ bundle
    $ cucumber
    Feature: Run example tests

      Scenario: Running example tests            # features/run_example_tests.feature:3
        Given the program has finished           # features/step_definitions/steps.rb:1
        Then the output is correct for each test # features/step_definitions/steps.rb:5

    1 scenario (1 passed)
    2 steps (2 passed)
    0m2.049s

Guard can automatically run testing when the code changes:

    $ bundle
    $ guard -G Guardfile-cucumber
    ...

# INSTALL

    $ npm install range

# LINT

Keep the code tidy:

    $ npm run-script lint

Guard can automatically lint when the code changes:

    $ bundle
    $ guard -G Guardfile-lint
    ...
