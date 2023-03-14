FROM centos:7

RUN yum install -y epel-release
RUN yum install -y centos-release-scl
RUN yum install -y devtoolset-7-gcc-c++
RUN yum install -y devtoolset-8-gcc-c++
RUN yum install -y cargo fuse-libs fuse-devel make sysstat
RUN cargo install sandboxfs --root /usr/local

RUN yum install -y wget \
    git \
    java-11-openjdk-devel


RUN wget https://github.com/bazelbuild/bazel/releases/download/6.0.0/bazel-6.0.0-linux-x86_64 -O /usr/local/bin/bazel 
RUN chmod +x /usr/local/bin/bazel

RUN bazel --version
