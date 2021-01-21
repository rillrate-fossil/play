# rillrate play

Dynamic tracing system that tends to be real-time.

The full playground as a single docker image. **Contains:** Rust, Python, Node.js.

## How to use

To start the image you need to have installed `Docker` and run the following command:

```sh
docker run -it -p 9090:9090 rillrate/play:latest
```

And the container will start with opened port and welcome message that will explain you
what to do the next to bootstrap a minimal project with preinstalled `rillrate` library.
