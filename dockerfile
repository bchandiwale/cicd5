FROM python:3.11-slim

ENV PYTHONDONTWRITEBYTECODE 1

ENV PYTHONUNBUFFERED 1

# RUN mkdir /django_web_app

WORKDIR /django_web_app

RUN pip install --upgrade pip

COPY requirements.txt /django_web_app/

RUN pip install -r requirements.txt

COPY . /django_web_app/

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
