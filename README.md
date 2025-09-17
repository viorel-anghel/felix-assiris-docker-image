# Felix Assiris docker image

This is a docker image for the project: http://dan.corlan.net/software/emulators/felix-assiris/

## Usage

As image name you can use:
- `vvang/felix:0.3.2` - the image built by me from docker registry
- `docker.io/vvang/felix:0.3.2` - the same image, to be used in podman commandsi
- `felix:0.3.2` - if you build your own local image

To build your own image, clone this repo and run `docker buildx build --platform linux/amd64 -t felix:0.3.2 .`.

Interactive run - get a shell inside container and play with *felix*:
```
docker run -ti --rm felix:0.3.2  bash
    felix -h
    [...]
    exit
```

Compile and run, read from STDIN, output to STDOUT, cleanup the container after exit:
```
docker run -i --rm felix:0.3.2 felix <help.assiris
[...]
```

## To build it

This is how I build and push for https://hub.docker.com/repository/docker/vvang/felix/general :

```
docker buildx build --platform linux/amd64 -t felix:0.3.2 .

# optional
docker tag felix:0.3 vvang/felix:0.3.2
docker push vvang/felix:0.3.2
```

