<<<<<<< HEAD

FROM nginx:alpine
COPY static /usr/share/nginx/html
LABEL maintainer = "asongentle@gmail.com"
=======
  
# use a node base image
FROM ubuntu:18.04

# set maintainer
LABEL maintainer "asongentle@gmail.com"

# set a health check
HEALTHCHECK --interval=5s \
            --timeout=5s \
            CMD curl -f http://127.0.0.1:8000 || exit 1

# tell docker what port to expose
EXPOSE 8000
>>>>>>> 5feaab8bbb0b112dab123cbe7e4348127a781ef2
