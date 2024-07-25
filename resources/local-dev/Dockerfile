FROM nginx
COPY default.conf /etc/nginx/conf.d/default.conf.template
CMD /bin/bash -c "envsubst '\$UPSTREAM_HOST \$UPSTREAM_PORT' < /etc/nginx/conf.d/default.conf.template > /etc/nginx/conf.d/default.conf && nginx -g 'daemon off;'"