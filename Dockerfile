FROM alpine

RUN apk add --update bash jq
RUN wget https://github.com/pivotal-cf/om/releases/download/4.2.1/om-linux-4.2.1 -O /usr/local/bin/om && chmod +x /usr/local/bin/om

COPY check /opt/resource/check
COPY in /opt/resource/in
COPY out /opt/resource/out
