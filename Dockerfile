FROM debian:13 AS builder

RUN apt update && apt upgrade -y
RUN apt install -y gnat make

COPY felix-assiris-0.3.0.tar.gz /root/
WORKDIR /root
RUN tar xzvf felix-assiris-0.3.0.tar.gz

WORKDIR /root/felix-assiris-0.3.0
COPY Makefile .
RUN make

FROM debian:13
RUN apt update && apt upgrade -y
RUN apt install -y libgnat-14 vim less procps wget
COPY --from=builder /root/felix-assiris-0.3.0/felix /usr/local/bin/
RUN chmod 755 /usr/local/bin/felix

WORKDIR /root
COPY help.assiris .
COPY hello_worls.assiris .

COPY docker-entrypoint.sh /
RUN chmod 755 /docker-entrypoint.sh
ENTRYPOINT [ "/docker-entrypoint.sh" ]

