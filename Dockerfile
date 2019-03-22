# The first instruction is what image we want to base our container on
# We Use an official Python runtime as a parent image
FROM python:3.6

# The enviroment variable ensures that the python output is set straight
# to the terminal with out buffering it first
ENV PYTHONUNBUFFERED 1

# Set Python Path
ENV PYTHONPATH=/usr/local/bin

# Install pipenv and get pipfile
RUN pip install --upgrade pip
RUN pip install pipenv
RUN wget https://raw.githubusercontent.com/18F/18f-django-project-template/master/Pipfile

# Move into a container directory
RUN mkdir /code
WORKDIR /code
ADD . /code/


#RUN pipenv install --dev --deploy

#RUN pip install django

#RUN django-admin.py startproject composeexample .

#RUN django-admin.py startproject --template=https://github.com/18F/18f-django-project-template/archive/master.zip starter_project



#RUN cd /code
run ls

#RUN django-admin.py startproject composeexample .


