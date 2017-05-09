FROM nmaas87/pyzmq

EXPOSE 5558 5557 8089

COPY ./files/run.sh /

RUN apk add --no-cache gcc musl-dev python-dev build-base git libtool pkgconfig autoconf automake wget ca-certificates

RUN pip install locustio

RUN apk del gcc musl-dev python-dev build-base git libtool pkgconfig autoconf automake

ENTRYPOINT []
CMD []