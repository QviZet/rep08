FROM ubuntu:latest
RUN apt update
RUN apt install -yy gcc g++ cmake
COPY . building/
WORKDIR building
RUN cmake -H. -B_build -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=_install
RUN cmake --build _build
RUN cmake --build _build --target install
