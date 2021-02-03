FROM python:3.8
#RUN apt-get update && apt-get -y upgrade
COPY . /src
WORKDIR /src
RUN pip install -r requirement.txt

EXPOSE 8000

CMD ["python manage.py runserver"]