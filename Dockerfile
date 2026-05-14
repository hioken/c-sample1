FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive
# 指定されたバージョン
ENV RUBY_VERSION=3.3.6

# 必要なパッケージのインストール
RUN apt-get update && apt-get install -y \
    build-essential \
    vim \
    git \
    curl \
    libssl-dev \
    libreadline-dev \
    zlib1g-dev \
    libyaml-dev \
    libffi-dev \
    && rm -rf /var/lib/apt/lists/*

# ruby-build を使用して Ruby 3.3.6 をビルドインストール
RUN git clone https://github.com/rbenv/ruby-build.git /usr/local/share/ruby-build \
    && /usr/local/share/ruby-build/install.sh \
    && ruby-build $RUBY_VERSION /usr/local

# Bundler のインストール
RUN gem install bundler

WORKDIR /app
CMD ["/bin/bash"]