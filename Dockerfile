# The first instruction is what image we want to base our container on
# We Use an official Python runtime as a parent image
FROM python:3.6

# The enviroment variable ensures that the python output is set straight
# to the terminal with out buffering it first
ENV PYTHONUNBUFFERED 1

RUN mkdir /code
WORKDIR /code
ADD . /code/


# Install pipenv and dependencies from pipfile
RUN pip install pipenv
RUN wget -O Pipfile https://raw.githubusercontent.com/18F/18f-django-project-template/master/Pipfile

RUN pipenv install

RUN pip install django

RUN django-admin.py startproject composeexample .

RUN django-admin.py startproject --template=https://github.com/18F/18f-django-project-template/archive/master.zip starter_project



#RUN cd /code
run ls

#RUN django-admin.py startproject composeexample .


