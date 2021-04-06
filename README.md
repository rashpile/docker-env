# Docker Automatic Build System

## Overview
This is set of docker compose files to start sites based on containers with automatic deploy.

**Requirements**
  
  Required domain name (**SERVER_URL**)
  
  Subdomains:
   * registry
   * drone
   * watchtower



## Environment Variables


| Environment                | Default                  | Description                                     |
| -------------------------- | ------------------------ | ----------------------------------------------- |
| SERVER_URL                 |                          | url to build server, _required_                 |
| DRONE_GITHUB_CLIENT_ID     |                          | drone github client, _required_                 |
| DRONE_GITHUB_CLIENT_SECRET |                          | drone github secret, _required_                 |
| DRONE_RPC_SECRET           |                          | drone rpc secret, _required_                    |
| WATCHTOWER_HTTP_API_TOKEN  |                          | watchtower token, _required_                    |
| DOCKER_CONFIG_FILE         |                          | <USER HOME>/.docker/config.json, _required_     |
| LETSENCRYPT_EMAIL          |                          | email                                           |


## Nginx Proxy & Letsencrypt
Docker compose file docker-compose-letsencrypt.yml to start Automated Nginx Reverse Proxy [**nginx-proxy**](https://github.com/nginx-proxy/nginx-proxy).

### Customize VHost
```
mkdir vhost
echo "client_max_body_size 0;" > vhost/registry.${SERVER_URL}
```

## Docker Registry

Docker registry host: registry.<SERVER_URL>

Create docker registry credentials:
```
mkdir auth
htpasswd -Bbn <username> <password> > auth/htpasswd
```


## Drone CI
Host: drone.<SERVER_URL>


## Watchtower
Host: watchtower.<SERVER_URL>