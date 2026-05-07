FROM nginx:alpine

COPY build/ /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
FROM SCRATCH Thu May  7 20:36:55 UTC 2026
