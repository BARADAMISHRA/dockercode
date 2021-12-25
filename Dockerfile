FROM ubuntu:21.04
ENV JDK_HOME=/u01/data/jdk-11
ENV PATH=${PATH}:${JDK_HOME}/bin
RUN mkdir -p /u01/data
WORKDIR /u01/data
ADD https://download.java.net/openjdk/jdk11/ri/openjdk-11+28_linux-x64_bin.tar.gz .
RUN gunzip openjdk-11+28_linux-x64_bin.tar.gz
RUN tar -xvf openjdk-11+28_linux-x64_bin.tar.gz
RUN rm -rf openjdk-11+28_linux-x64_bin.tar.gz

CMD ["java", "--version"]