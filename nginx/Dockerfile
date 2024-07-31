FROM nginx:latest

#logs
RUN mkdir -p /var/log/nginx/services/port443
RUN mkdir -p /var/log/nginx/services/port80
RUN mkdir -p /var/log/nginx/services/plutchart/api
RUN mkdir -p /var/log/nginx/services/plutchart/landing
RUN mkdir -p /var/log/nginx/services/plutchart/tool

#conf
COPY *.conf.template /etc/nginx/
COPY *.sh /etc/nginx/

#for health page
RUN mkdir -p /etc/nginx/njs
COPY health.js /etc/nginx/njs/health.js
CMD [ "/etc/nginx/nginx_prepare_run.sh" ]
