FROM openresty/openresty:alpine-fat

RUN apk --no-cache add openssl
RUN /usr/local/openresty/luajit/bin/luarocks install lua-resty-auto-ssl && rm /etc/nginx/conf.d/default.conf

CMD ["/usr/local/openresty/bin/openresty", "-g", "daemon off;"]
