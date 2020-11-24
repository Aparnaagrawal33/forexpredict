FROM python:3.8-slim

ENV PYTHONUNBUFFERED 1
RUN mkdir /code
WORKDIR /code
COPY forexPredictionML/. /code/
RUN pip install -r requirements.txt
RUN pip install joblib
RUN pip install numpy
RUN pip install django-cors-headers
EXPOSE 8000 9000
CMD python manage.py runserver 0.0.0.0:8000
