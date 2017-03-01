FROM alpine:3.4

RUN apk add --no-cache \
  bash \
  g++ \
  gcc \
  make \
  nodejs \
  openssl \
  perl

# install yarn
RUN npm install --global yarn

COPY wrap.sh /wrap.sh
ENTRYPOINT ["/wrap.sh"]

#
# dex labels
#

LABEL \
  org.dockerland.dex.api="v1" \
  org.dockerland.dex.docker_workspace="/" \
  org.dockerland.dex.docker_volumes="~/.ssh/id_rsa:/dex/home/.ssh/id_rsa:ro /nfs:/nfs:ro"
