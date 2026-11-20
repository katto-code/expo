FROM nginx:1.27-alpine

# Render asigna el puerto en $PORT (por defecto 10000)
ENV PORT=10000

COPY nginx.conf.template /etc/nginx/templates/default.conf.template
COPY ["Monzati Expo.html", "/usr/share/nginx/html/index.html"]

EXPOSE 10000
