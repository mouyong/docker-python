FROM python

WORKDIR /app

ADD . /app

RUN mkdir ~/.pip && mv /app/deploy/pip.conf ~/.pip/

RUN sh -c /app/deploy/changesource.sh

RUN apt update

RUN pip install -r requirements.txt

EXPOSE 80

CMD ["./docker-php-entrypoint.sh"]
