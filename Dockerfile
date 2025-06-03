FROM ubuntu:latestAdd commentMore actions

RUN apt update
RUN apt install -yy gcc g++ cmake

COPY . /building
WORKDIR /building

RUN cmake -H. -B_build
RUN cmake --build _build
