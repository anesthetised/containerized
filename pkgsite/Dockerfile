FROM golang:1.25.1-alpine3.22

ARG VERSION=v0.0.0-20250814150923-ed9d06afb3a5

LABEL org.opencontainers.image.source="https://github.com/anesthetised/containerized"
LABEL org.opencontainers.image.version=${VERSION}
LABEL org.opencontainers.image.description="Image of https://pkg.go.dev/golang.org/x/pkgsite"

ENV GOPROXY=https://proxy.golang.org
RUN go install golang.org/x/pkgsite/cmd/pkgsite@${VERSION}

EXPOSE 8080
ENTRYPOINT ["pkgsite", "-proxy", "-http", ":8080"]
