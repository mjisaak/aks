### Docker commands
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

Run the Image (-d = detached)
```bash
docker run -d -p 8080:80 <mytag>
```