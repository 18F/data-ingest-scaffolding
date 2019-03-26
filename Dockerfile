FROM python:3
ENV PYTHONUNBUFFERED 1
RUN mkdir /code
WORKDIR /code
RUN wget https://raw.githubusercontent.com/18F/18f-django-project-template/master/Pipfile -O /code/Pipfile
RUN pip install --upgrade pip
RUN pip install pipenv
RUN pipenv install --dev --system --skip-lock
COPY . /code/
