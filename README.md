# Containerized

This repository contains a variety of application images.

## Build

```sh
just image-build pkgsite v0.0.0-20250814150923-ed9d06afb3a5
just image-build postgres 17.6-alpine3.22
```

## Push

```sh
just image-push pkgsite v0.0.0-20250814150923-ed9d06afb3a5
just image-push postgres 17.6-alpine3.22
```
