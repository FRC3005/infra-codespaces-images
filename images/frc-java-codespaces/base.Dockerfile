FROM mcr.microsoft.com/vscode/devcontainers/base:ubuntu-22.04

RUN apt-get update && apt-get install -y apt-transport-https \
  ca-certificates \
  gnupg \
  software-properties-common \
  wget && \
  add-apt-repository ppa:git-core/ppa && \
  apt-get update && apt-get install -y tzdata && apt-get install -y \
  build-essential \
  curl \
  git \
  java-common \
  openjdk-11-jdk \
  openssh-client \
  iputils-ping \
  python3-dev \
  python3-pip \
  python3-setuptools \
  sudo \
  unzip \
  vim \
  wget \
  zip \
  && rm -rf /var/lib/apt/lists/*

ENV JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64
