# Basic Docker Commands

## Docker Basics
- `docker version` - Show Docker version information
- `docker info` - Display system-wide Docker information
- `docker help` - Get help on Docker commands

## Container Management
- `docker ps` - List running containers
- `docker ps -a` - List all containers (including stopped ones)
- `docker run <image>` - Create and start a new container from an image
- `docker start <container>` - Start a stopped container
- `docker stop <container>` - Stop a running container
- `docker restart <container>` - Restart a container
- `docker rm <container>` - Remove a stopped container
- `docker logs <container>` - View logs of a container
- `docker exec -it <container> <command>` - Run a command inside a running container

## Image Management
- `docker images` - List available Docker images
- `docker pull <image>` - Download an image from Docker Hub
- `docker build -t <image-name> .` - Build an image from a Dockerfile
- `docker rmi <image>` - Remove an image
- `docker tag <image> <repo>:<tag>` - Tag an image
- `docker push <repo>:<tag>` - Push an image to a repository

## Networking
- `docker network ls` - List Docker networks
- `docker network create <network>` - Create a custom network
- `docker network inspect <network>` - Show details of a network
- `docker network connect <network> <container>` - Connect a container to a network
- `docker network disconnect <network> <container>` - Disconnect a container from a network

## Volumes and Storage
- `docker volume ls` - List Docker volumes
- `docker volume create <volume>` - Create a volume
- `docker volume inspect <volume>` - Show details of a volume
- `docker volume rm <volume>` - Remove a volume
- `docker run -v <volume>:/path/in/container <image>` - Mount a volume in a container

## Docker Compose
- `docker-compose up` - Start services defined in `docker-compose.yml`
- `docker-compose down` - Stop and remove containers, networks, and volumes
- `docker-compose ps` - List services managed by Docker Compose
- `docker-compose logs` - View logs of Docker Compose services
- `docker-compose build` - Build images for services

## Miscellaneous
- `docker inspect <container>` - Get detailed information about a container
- `docker stats` - Show real-time resource usage of containers
- `docker top <container>` - Display running processes in a container
- `docker history <image>` - Show history of an image
- `docker system prune` - Remove unused data (stopped containers, unused networks, dangling images)

