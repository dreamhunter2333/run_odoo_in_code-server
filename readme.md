# Run Odoo in code-server

## docker build

```bash
cd docker
docker build -f Dockerfile -t odoo13_code_server:1.0 .
```

## start

`bash start.sh`

Open [http://localhost:8080/](http://localhost:8080/)

default `PASSWORD=admin` in docker/docker-compose.yml

You can install code-server as a chrome app which like a local vscode

![code-server](/docker/code-server.png)

## stop

`bash start.sh stop`

## down

`bash start.sh down`
