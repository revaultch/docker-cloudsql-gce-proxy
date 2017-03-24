#!/bin/sh -e
rm -f busybox.static 
docker build -t "docker-cloudsql-gce-proxy-build" build
docker run docker-cloudsql-gce-proxy-build cat /bin/busybox > busybox.static
chmod +x  busybox.static
docker rmi "docker-cloudsql-gce-proxy-build"