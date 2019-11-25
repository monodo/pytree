from python:3

LABEL Maintainer="olm@ylb.ch"

RUN mkdir /etc/pytree

ADD . /etc/pytree


RUN pip install -r /etc/pytree/requirements.txt

EXPOSE 5000

WORKDIR /etc/pytree

ENTRYPOINT ["gunicorn"]
CMD ["--bind", "0.0.0.0:5000", "wsgi:app"]
