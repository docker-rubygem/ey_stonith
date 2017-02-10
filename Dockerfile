FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.4.3.pre.1

RUN gem install ey_stonith --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["stonith"]
CMD ["--help"]
