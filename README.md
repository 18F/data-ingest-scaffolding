# data-ingest-scaffolding
Provides a project template to easily start a new django-data-ingest project

## How to use this

### 1. Get the files
Either fork the repo and then `cd` into the repo directory or, alternately, just grab the `Dockerfile` and `docker-compose.yml` for your own repo, if that suits you better.

### 2. Build the images
```
docker-compose build --build-arg NAME=projectname
```
This will install Django and other standard dependencies for a new 18F project, based on our 18f Django project template Pipfile and will create a new django project.

You can name your project whatever you like by passing the `NAME` argument. If you omit the argument altogether and just run `docker-compose build` the default project name is `myproject`.

See the `18f-django-project-template` repo for more details about the standard project template and what it contains.

### 3. Bring up your app
```
docker-compose up
```
This will fire up your new Django project using `runserver`


## Potential issues
There is some assumption that you're only running one Django project in your Docker container. If you wish to run more than one Django project in the container, you may need to `docker-compose run web /bin/bash` in and `rm` the existing Pipfile. After that, you should be able to run the startproject again.
