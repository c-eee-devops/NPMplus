FROM caddy:2.7.6 as caddy

FROM alpine:3.19.0
RUN apk add --no-cache ca-certificates tzdata
COPY --from=caddy /usr/bin/caddy /usr/bin/caddy
COPY Caddyfile /etc/caddy/Caddyfile
