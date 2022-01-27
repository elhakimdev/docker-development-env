# A Lightweigth minimal much better docker container setup for running laravel development environment locally on your PC/Dekstop Machine

A minimal much better docker setuo for local development php that useful to run laravel app without any dependecy (Build Natively Docker From Docker Image Setup)

## Development Environment Included
The ```docker-compose.yml``` declare all container service that already setup for get you benefits to focus on writing code, you dont need to move your focus to config deploy for production, we handle it. 

our ```dockerfile``` is set to build ```PHP-FPM:alpine-latest``` to pass any request that occurs, thereare severals service that already handle :
```
-   Nginx Latest
-   Mysql Latest 
-   Composer Latest
-   PHP-FPM Latest (Alpine Linux Dist.)
-   Node.js (Npm also included)
```

## Folder Hierarchy

```
- src : store/clone/create/move your newer/exist laravel-app here
```
```
- nginx : to store Nginx Default Configuration
```
```
- mysql : for storing/managing/persisting database connection (include access, error and logging)
```

## Step-by-step Usage
**
IMPORTAN !!!!! Before use this docker configuration, make sure that youre create new folder ```mysql``` and ```src``` inside root dir. 
**


so the ```~rootdir``` must be contains 
```
-   root
    - mysql
    - nginx
        - default.conf
    - src
    .env
    .gitignore
    docker-compose.yml
    dockerfile
```

After that, then you can build and running container images :

```
docker_compose build && docker-compose up -d
```

### Usage step-by-step for fresh laravel install

First make sure youre create a ```src``` folder
```
mkdir ./src
```
after it, then create a fresh laravel project inside the ```src``` directory using composer service that already running in the docker container

```
docker-compose run --rm composer create-project laravel/laravel ./src
```

````

````
### Usage step-by-step for cloned existing repository
````
todo documented
````
