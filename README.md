# Felix Assiris docker image

This is a docker image for the the project: http://dan.corlan.net/software/emulators/felix-assiris/

## To use it

You can use the image from `vvang/felix:0.3` or you can build it locally with 
```
docker buildx build --platform linux/amd64 -t felix:0.3 .
```
then you can use it like this:

```
# to use the remote image
# docker run -d --name felix vvang/felix:0.3

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

## To build it

- clone this repo
- `docker buildx build --platform linux/amd64 -t felix:0.3 .`
- optional tag and push the image to a registry


