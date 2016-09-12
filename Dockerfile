FROM gcc:latest

ARG ZIP_FILE=release.zip

COPY ${ZIP_FILE} /app/
RUN apt-get update \
    && apt-get install --yes --force-yes --no-install-recommends --no-install-suggests \
        unzip

WORKDIR /app/${ZIP_FILE}
RUN unzip ${ZIP_FILE}
#ENV LD_LIBRARY_PATH /app/criterion/lib

COPY test.c /app/
RUN gcc \
    -o test test.c \
    -L/app/criterion/lib \
    -lcriterion \
    -I /app/criterion/include/criterion

CMD ["./test"]
