FROM python:3.8-slim

ENV PYTHONUNBUFFERED 1
RUN mkdir /code
WORKDIR /code
COPY forexPredictionML/. /code/
RUN pip install -r requirements.txt
EXPOSE 8000
CMD python manage.py runserver
