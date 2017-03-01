FROM abiosoft/caddy

#
# acme-bootstrap.cc.dockerland.org
#

COPY acme-bootstrap /srv/index.html

# copy files to /srv to serve under them.
