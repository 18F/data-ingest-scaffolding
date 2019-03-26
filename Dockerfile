# Select the Python image we want to base our container on
# We use an official Python runtime as a parent image
FROM python:3.6

# The enviroment variable ensures that the python output 
# is set straight to the terminal without buffering it first.
ENV PYTHONUNBUFFERED 1

# Create and move into a container directory.
RUN mkdir /code
WORKDIR /code

# Go get our standard Django project pipfile and install it.
RUN wget https://raw.githubusercontent.com/18F/18f-django-project-template/master/Pipfile -O /code/Pipfile

# Install pipenv and dependencies from the pipfile we just got.
# Do not mess with the flags on pipenv install lightly.
# They're all needed for something.
RUN pip install --upgrade pip
RUN pip install pipenv
RUN pipenv install --dev --system --skip-lock

COPY . /code/
