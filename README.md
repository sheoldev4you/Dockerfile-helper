# Dockerfile-helper
## NGINX

```yml
# linux/amd64,linux/arm64
FROM ghcr.io/tfsheol/custom-nginx-angular:latest
COPY angular-dist /app
```

```yml
# linux/x86 & NGINX 1.19.8
FROM ghcr.io/tfsheol/custom-nginx:1.19.8
COPY angular-dist /app
```

```yml
# linux/x86 & NGINX 1.14.1
FROM ghcr.io/tfsheol/custom-nginx:1.14.1
COPY angular-dist /app
```