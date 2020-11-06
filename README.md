# laravel-docker-compose-quickstart
 Sets up a full LAMP stack with docker-compose into your Laravel project

### How to use:
Drop the contents of 'drop-into-your-project' into your Laravel project.

You can edit as you like. These are the files you will most likely be editing after the drop:
- server/.env
- server/init.sh
- server/init.sql
- server/vhost.conf
- dockerfiles/webserver.Dockerfile
- .gitignore

### Quickstart:
Login to your server.

Pull your project (after the drop above) onto the server.

Navigate to your project's main directory.

Run `docker-compose build && docker-compose up`

### Troubleshoot:
Run `docker-compose ps` to check the status of the services.

Run `docker container ls` to check the status of the containers.

Run `docker-compose exec <SERVICE_NAME> bash` to enter into an up and running service for further investigation.
