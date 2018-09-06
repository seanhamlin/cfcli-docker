Cloudflare CLI Docker Alpine PHP CLI Image
==========================================

A PHP 7.2 CLI container based on Alpine Linux.

## Build the container

Only needed for testing the build actually works.

```bash
$ docker build --no-cache -t seanhamlin/cfcli:dev -f Dockerfile .
```

## Download the latest image

```bash
$ docker pull seanhamlin/cfcli
```

## SSH into the container

```
$ docker run --rm -it -v$HOME/.cfcli:/root/.cfcli seanhamlin/cfcli bash
```

## Run cfcli commands

```bash
$ docker run --rm -it -v$HOME/.cfcli:/root/.cfcli seanhamlin/cfcli
$ docker run --rm -it -v$HOME/.cfcli:/root/.cfcli seanhamlin/cfcli zone:list
```
