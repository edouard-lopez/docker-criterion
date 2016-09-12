
Docker container to run test with [Criterion test framework](https://github.com/Snaipe/Criterion) (a test framework for C language).

# Requirements

* `docker`
* `criterion` library (optional) :

        curl --output release.zip https://github.com/Snaipe/Criterion/archive/bleeding.zip
        docker build -t tdd-c .
        docker run -it tdd-c

