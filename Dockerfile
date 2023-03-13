FROM tiangolo/uvicorn-gunicorn-fastapi:python3.9

COPY . /app

EXPOSE 8000

#FROM python:3.9-alpine

#RUN apk update && \
#    apk add --no-cache --virtual .build-deps build-base && \
#    apk add --no-cache libpq

#RUN pip install --upgrade pip

#COPY . .

#RUN pip install -r requirements.txt

#CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]
