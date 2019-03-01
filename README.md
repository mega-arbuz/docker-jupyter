# Jupyter Docker Image with _nbextensions_ and _NumPY_

## Docker Hub
https://hub.docker.com/r/mega1arbuz/jupyter

## Content
Image with nbextensions and numpy installed.

Enabled extensions:
 - Cell Execution Timing
 - Collapsible Headings
 - ScratchPad

## Jupyter Login
Jupyter installed with a predefined token: 12345abcd.

Login URL will always be: http://127.0.0.1:8888/?token=12345abcd

## Save Work
Default working directory is `work` and it should be mounted to local work directory when running with docker-compose or run command.

### Docker Compose
Available in [GitHub repo](https://github.com/mega-arbuz/docker-jupyter/blob/master/docker-compose.yaml) .

```yaml
version: '2'
services:
  jupyter:
    container_name: jupyter-openu
    image: mega1arbuz/jupyter:jupyter-nbe-numpy
    ports:
      - "8888:8888"
    volumes:
      - ./work:/home/jovyan/work
```

### Run command
```bash
docker pull mega1arbuz/jupyter:jupyter-nbe-numpy
docker run -it --rm -p 8888:8888 -v /path/to/your/work/directory:/home/jovyan/work mega1arbuz/jupyter:jupyter-nbe-numpy
```
