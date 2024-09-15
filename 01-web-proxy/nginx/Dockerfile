FROM nginx:1.21-alpine

RUN mkdir /etc/nginx/templates
COPY /templates/default.conf.template /etc/nginx/templates/
#COPY index.html /usr/share/nginx/html/

#RUN mkdir /etc/nginx/certs/
#COPY /certs/nginx.key /etc/nginx/certs/
#COPY /certs/nginx.crt /etc/nginx/certs/

# copy new script to /docker-entrypoint.d/
# COPY /docker-entrypoint.d/20-envsubst-on-templates.sh /docker-entrypoint.d/20-envsubst-on-templates.sh    