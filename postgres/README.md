# PostgreSQL

Create multiple databases using POSTGRES_MULTIPLE_DATABASES environment variable.

Usage:

```yaml
services:
  db:
    image: ghcr.io/anesthetised/containerized/postgres:17.6-alpine3.22
    restart: unless-stopped
    user: postgres
    environment:
      - POSTGRES_USER=postgres
      - POSTGRES_PASSWORD=postgres
      - POSTGRES_MULTIPLE_DATABASES=backend, metrics, arbitrary_name
    volumes:
      - postgres:/var/lib/postgresql/data
    ports:
      - "127.0.0.1:5432:5432"
    healthcheck:
      test: ["CMD-SHELL", "pg_isready"]
      interval: 10s
      timeout: 5s
      retries: 5

volumes:
  postgres:
    driver: local
```
