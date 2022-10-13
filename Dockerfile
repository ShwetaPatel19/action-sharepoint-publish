FROM alpine/node:latest
RUN apk add  --update
COPY ./* /app/
RUN cd /app && npm install
ENTRYPOINT ["/app/entrypoint.sh"]
