FROM ubuntu:latest

COPY . /app
WORKDIR /app

RUN apt update
RUN apt install -yy g++ cmake
RUN cmake -H. -Bbuild
RUN cmake --build build

CMD ["./build/hello_world_application/hello_world"]
