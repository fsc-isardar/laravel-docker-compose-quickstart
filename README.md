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

### Security & Other Common Edits:
***(do the following before running docker-compose build)***

Login to your server.

Navigate to your project's main directory.

Edit the following files:


File | Detail | Example | Security
--- | --- | --- | ---
server/.env | "APP_NAME" | *MyBlog* | no
server/.env | "APP_ENV" | *taging, production* | no
server/.env | "APP_DEBUG" | *true, false* | no
server/.env | "APP_URL" | *http://localhost:123, https://www.myblog.com* | no
server/.env | "DB_DATABASE" | *blog_database* | no
server/.env | "DB_USERNAME" | jdoe | **YES**
server/.env | "DB_PASSWORD" | pAsSwOrD123 | **YES**
server/init.sql | Replace "my_default_db" | *blog_database* | no
server/vhost.conf | "ServerName" | *www.example.com* | no
server/vhost.conf | "ServerAdmin" | *someones@email.com* | no
server/vhost.conf | Uncomment "SSL..." and edit to enable https** | *...* | **YES**
.gitignore | ... | *...* | no
docker-compose.yml | Change port numbers "81", "444", "3307", and "8000" to the ports you want to use *(make sure server/.env > APP_URL is updated to use correct port)* | *...* | **YES**

### Troubleshoot:
Run `docker-compose ps` to check the status of the services.

Run `docker container ls` to check the status of the containers.

Run `docker-compose exec <SERVICE_NAME> bash` to enter into an up and running service for further investigation.

Run `docker-compose build --no-cache && docker-compose up` to rebuild everything from scratch.
