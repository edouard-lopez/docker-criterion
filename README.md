
Docker container to run tests with [Criterion test framework](https://github.com/Snaipe/Criterion) (a test framework for `C` language).

# Requirements

* [`docker`](https://docs.docker.com/engine/installation/) engine ;

## Usage

1. Write your tests in `tests/sample.c` (default) ;
1. Setup the building environment:

        docker build -t test-my-c .
        
1. Run the tests:

        docker run -v $(pwd)/tests:/tests -t test-my-c