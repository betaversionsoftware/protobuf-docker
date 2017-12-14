FROM ubuntu

RUN apt-get update && apt-get install git autoconf automake libtool curl make g++ unzip -y

RUN git clone https://github.com/google/protobuf.git /protobuf

WORKDIR /protobuf

RUN ./autogen.sh
RUN ./configure
RUN make
RUN make check
RUN make install
RUN ldconfig
