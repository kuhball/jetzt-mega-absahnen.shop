FROM klakegg/hugo:onbuild AS hugo

FROM nginx
LABEL org.opencontainers.image.source="https://github.com/kuhball/jetzt-mega-absahnen.shop"
COPY --from=hugo /target /usr/share/nginx/html
