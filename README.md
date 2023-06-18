# I, Librarian

This is the dockerised version of [I, Librarian Free](https://github.com/mkucej/i-librarian-free), an open-source bilbiography manager and repository.

## Build

Build the image using, for example:

```
version=5.10.4
docker build \
  --tag austozi/i-librarian:latest \
  --tag austozi/i-librarian:$version \
  --build-arg version=$version \
  build
```

Adjust the version number and tags accordingly.

A pre-built docker image is available at [Docker Hub](https://hub.docker.com/r/austozi/i-librarian) for selected architectures.

## Run

Bring up the container using `docker-compose up -d`.

The first time you use the container, you need to initialise the application:

```
docker exec -it i-librarian bash /setup.sh
```

Access the web application in a browser. If running this on localhost, then go to http://localhost:9091.
