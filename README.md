# data-ingest-scaffolding
Provides a project template to easily start a new django-data-ingest project

## How to use this

1. Fork the repo, then `cd` into the repo directory. Alternately, you *could* just grab the `Dockerfile` and `docker-compose.yml` for your own repo, if that suits you better.
2. Run `docker build`. This will install Django and other standard dependencies for a new 18F project, based on our 18f Django project template Pipfile.
3. Run `docker-compose run web django-admin.py startproject --template=https://github.com/18F/18f-django-project-template/archive/master.zip myprojectname`. This will create a new project template based on our standard Django template. Be sure to make `myprojectname` be whatever you want your project to be named. See the `18f-django-project-template` repo for more details about the standard project template.
4. Run `docker-compose up`
5. Enjoy
