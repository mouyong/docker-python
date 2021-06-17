FROM python:3.9

WORKDIR /app

ADD . /app

RUN mkdir ~/.pip && mv /app/deploy/pip.conf ~/.pip/

RUN chmod +x /app/deploy/changesource.sh && /app/deploy/changesource.sh

RUN if [ -f requirements.txt ]; then \
  pip install -r requirements.txt \
;fi

EXPOSE 80

CMD ["./docker-php-entrypoint.sh"]
