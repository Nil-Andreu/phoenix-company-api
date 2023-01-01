# Dockerfile DB
For creating a Posgtres database for development:
```docker
    docker build -t postgres_db .
    docker run -t postgres_db -p 5432:5432 -d
```