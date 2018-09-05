Cloudflare CLI Docker Alpine PHP CLI Image
==========================================

A PHP 7.2 CLI container based on Alpine Linux.

Build the container.

```bash
$ docker build --no-cache -t seanhamlin/cfcli:latest -f Dockerfile .
```

SSH into the container

```
$ docker run --rm -it -v$HOME/.cfcli:/root/.cfcli seanhamlin/cfcli:latest bash
```

Run a cfcli command

```bash
$ docker run --rm -it -v$HOME/.cfcli:/root/.cfcli seanhamlin/cfcli:latest cfcli
```
