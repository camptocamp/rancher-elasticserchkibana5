FROM rancher/confd-base:0.11.0-dev-rancher

ADD ./conf.d /etc/confd/conf.d
ADD ./templates /etc/confd/templates
ADD ./run.sh /opt/rancher/bin/
ADD ./run.sh /usr/share/docker-elasticsearch/config/scripts/

ENTRYPOINT ["/confd"]
CMD ["--backend", "rancher", "--prefix", "/2015-07-25"]
#CMD ["--backend", "env", "--onetime", "--log-level", "debug"]
