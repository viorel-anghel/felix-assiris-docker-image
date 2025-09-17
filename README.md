# Felix Assiris docker image

This is a docker image for the project: http://dan.corlan.net/software/emulators/felix-assiris/

## To use it

As image name you can use:
- `vvang/felix:0.3` - the image built by me from docker registry
- `docker.io/vvang/felix:0.3` - the same image, to be used in podman commandsi
- `felix:0.3` - if you build your own local image

To build your own image, clone this repo and run `docker buildx build --platform linux/amd64 -t felix:0.3 .`.

Podman run example:
```
podman run -d --name felix docker.io/vvang/felix:0.3 
```

## Interactive use
```
docker run -d --name felix felix:0.3  # start a container
docker ps | grep felix                # check if it's running

docker exec -ti felix bash            # "enter" inside container
  # run stuff in container, for example
  felix <help.assiris
  [...]
  felix <hello.assiris
  [...]
  ...
  exit

```

## Run once use

This will create a temporary container and run the file `help.assiris`:

```
docker run --rm -v $PWD/help.assiris:/help.assiris felix:0.3 help.assiris
```

## To build it

This is how I build and push for https://hub.docker.com/repository/docker/vvang/felix/general :

```
docker buildx build --platform linux/amd64 -t felix:0.3 .

# optional
docker tag felix:0.3 vvang/felix:0.3
docker push vvang/felix:0.3
```

