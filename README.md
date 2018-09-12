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


## Run cfcli commands

The default entry point of the container is `cfcli` so there is no need to
specify this command. Instead just pass in the arguments to the `cfcli` command.

```bash
$ docker run --rm -it -v$HOME/.cfcli:/root/.cfcli seanhamlin/cfcli
$ docker run --rm -it -v$HOME/.cfcli:/root/.cfcli seanhamlin/cfcli zone:list
```
