FROM ubuntu:16.04

RUN apt update && apt install -y cmake libpcl-dev libproj-dev python-vtk6
RUN ln -s /usr/lib/x86_64-linux-gnu/libvtkCommonCore-6.2.so /usr/lib/libvtkproj4.so

RUN mkdir /root/build

WORKDIR /root

ADD main.cpp /root/main.cpp
ADD CMakeLists.txt /root/CMakeLists.txt

WORKDIR /root/build
RUN cmake ..
RUN make
CMD tail -f /dev/null
