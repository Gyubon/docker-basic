FROM python:3.6.8
 
WORKDIR /usr/src/app
COPY dockerizing ./
 
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
 
RUN pip install -r requirements.txt
 
CMD ["gunicorn", "dockerizing.wsgi", "--bind=0:8000"]