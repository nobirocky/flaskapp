FROM alpine:3.8

RUN mkdir /var/flaskapp/

WORKDIR /var/flaskapp/

COPY ./app/ .

RUN apk update && apk add --no-cache python3

RUN pip3 install -r requirements.txt

Expose 5000

CMD [ "python3" , "app.py" ]
