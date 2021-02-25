# docker-euphoria

## Images

- [openeuphoria/euphoria](https://hub.docker.com/r/openeuphoria/euphoria) - An image for running Euphoria applications in Docker, based on debian:latest.
- [openeuphoria/euphoria-mvc](https://hub.docker.com/r/openeuphoria/euphoria-mvc) - An image for running Euphoria MVC applications in Docker, based on euphoria:latest.
- [openeuphoria/euphoria-demo](https://hub.docker.com/r/openeuphoria/euphoria-demo) - An image demonstrating a simple Euphoria application in Docker, based on euphoria-mvc:latest.

## Usage

To run the demo image:

```
docker run -p 5000:5000 openeuphoria/euphoria-demo
```
