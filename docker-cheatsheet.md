### Docker commands

Login to an Azure Container Registry

```bash
docker login <myRegistry>.azurecr.io
```

Test docker engine

```bash
docker run hello-world
```

Get current running docker images:

```bash
docker ps
```

Build an Image with a tag

```bash
docker build -t <mytag> .
```

Stop all containers

```
docker stop $(docker ps -a -q)
```

Run the Image (-d = detached)

```bash
docker run -d -p 8080:80 <mytag>
```

Delete all images

```bash
docker rmi $(docker images -a -q) --force
```