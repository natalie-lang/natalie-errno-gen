ARG IMAGE=ruby:3.1
FROM $IMAGE

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y -q moreutils

ENV LC_ALL=C.UTF-8

WORKDIR natalie-errno-gen
COPY generate.rb generate.rb

ENTRYPOINT ["ruby", "generate.rb"]
