# range - A simple library for range(a, b, step).

# EXAMPLE

    $ npm install
    $ make test
    node fizzbuzz.js &
    sleep 2
    Server running at http://127.0.0.1:8124/
    curl http://localhost:8124
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
    lsof -i tcp:8124 | awk 'NR!=1 {print $2}' | xargs kill

# REQUIREMENTS

* [Node.js](http://nodejs.org/)

# INSTALL

    $ npm install range

# LINT

Keep the code tidy:

    $ npm run-script lint
