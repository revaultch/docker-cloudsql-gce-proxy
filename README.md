# Cloud SQL Proxy with busybox static

Augments the container `gcr.io/cloudsql-docker/gce-proxy` with busybox.static.
This allows you to pass env variables when running the proxy e.g.

```
command: ["/bin/sh", "-c", "/cloud_sql_proxy --dir=/db -instances=${DB}=tcp:3306 -credential_file=/secrets/db/credentials.json"]
```

https://github.com/GoogleCloudPlatform/cloudsql-proxy

To verify the build run:
```
./prepare.sh && docker build .
