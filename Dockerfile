FROM nginx

COPY ./shared /usr/share/nginx/html

RUN sed -i "s|{{CURRENT_DATE}}|$(date +'%d %B %Y')|g" /usr/share/nginx/html/index.html