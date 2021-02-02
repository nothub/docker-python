FROM python:3-alpine

RUN apk add --no-cache tini

WORKDIR /usr/src/app

RUN addgroup --gid 10043 --system rootless \
 && adduser  --uid 10042 --system --ingroup rootless --home /home/rootless --gecos "" rootless \
 && chown -R rootless:rootless /usr/src/app
USER rootless

ENTRYPOINT ["/sbin/tini", "--", "python3"]
CMD ["--version"]
