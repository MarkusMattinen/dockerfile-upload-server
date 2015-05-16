# upload server, nginx, etcd registration, confd and supervisord on trusty
FROM markusma/nginx-etcdregister:1.7

RUN apt-add-repository ppa:chris-lea/node.js

RUN apt-get update \
 && apt-get install -y --no-install-recommends nodejs imagemagick build-essential libpcre3-dev libssl-dev \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN npm install formidable node-static imagemagick 2>&1 >/dev/null

ADD config/srv/http /srv/http
ADD config/srv/nodejs /srv/nodejs
ADD config/etc/supervisor/conf.d /etc/supervisor/conf.d
ADD config/etc/confd /etc/confd
ADD config/init2 /init2

EXPOSE 5000
VOLUME [ "/srv/uploads", "/usr/local/etc/nginx" ]
CMD [ "/init2" ]
