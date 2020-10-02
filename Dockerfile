FROM node:13.10.1

LABEL authors="Umar Hayat khan <umarhayatmail@gmail.com>"

RUN npm install -y -g @angular/cli@v10.1.3 \
  && rm -rf /tmp/* /var/cache/apk/* *.tar.gz ~/.npm \
  && npm cache clear --force \
  && sed -i -e "s/bin\/ash/bin\/sh/" /etc/passwd

