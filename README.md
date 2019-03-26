# data-ingest-scaffolding
Provides a project template to easily start a new django-data-ingest project

## How to use this

### 1. Get the files
Either fork the repo and then `cd` into the repo directory or, alternately, just grab the `Dockerfile` and `docker-compose.yml` for your own repo, if that suits you better.

### 2. Build the images
```
docker-compose build
```
This will install Django and other standard dependencies for a new 18F project, based on our 18f Django project template Pipfile.

### 3. Create your new project
```
docker-compose run --no-deps web django-admin startproject --template=https://github.com/18F/18f-django-project-template/archive/master.zip my_project_name .
```

This will create a new project template based on our standard Django template. Be sure to make `myprojectname` be whatever you want your project to be named. 

See the `18f-django-project-template` repo for more details about the standard project template.

### 4. Bring up your app
```
docker-compose up
```
This will fire up your new Django project using `runserver`


## Potential issues
There is some assumption that you're only running one Django project in your Docker container. If you wish to run more than one Django project in the container, you may need to `docker-compose run web /bin/bash` in and `rm` the existing Pipfile. After that, you should be able to run the startproject again.
