ARG CLI_IMAGE
FROM ${CLI_IMAGE} AS cli

FROM uselagoon/nginx:latest

RUN mkdir -p /etc/nginx/conf.d/app

COPY lagoon/nginx/app /etc/nginx/conf.d/app/
COPY lagoon/nginx/app.conf /etc/nginx/conf.d/app.conf

# Example of how to add advanced nginx configuration
COPY lagoon/nginx/advanced.conf /etc/nginx/conf.d/app/location_prepend_01.conf

# Example to add redirects
COPY lagoon/nginx/redirects.conf /etc/nginx/redirects-map.conf

RUN fix-permissions /etc/nginx

COPY --from=cli /app /app

ENV WEBROOT=public
