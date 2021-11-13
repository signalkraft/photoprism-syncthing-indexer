FROM node:alpine

ENV NODE_TLS_REJECT_UNAUTHORIZED=0
ENV API_KEY=secret
ENV PHOTOPRISM_SESSION_ID=secret
ENV PHOTOPRISM_INDEX_URL=http://photoprism:2342/api/v1/index
ENV ST_URL=http://syncthing:8384/rest/events

WORKDIR /root

RUN apk add --update curl git && npm install -g https://github.com/terminalnetwork/syncthing-hooks

COPY connect-host.sh .

CMD ["/bin/ash", "connect-host.sh"]