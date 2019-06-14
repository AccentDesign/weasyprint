FROM        python:3.7-alpine

COPY        . /app

RUN         set -ex \
            && apk update \
            && apk add --no-cache \
                # WeazyPrint
                gcc \
                musl-dev \
                jpeg-dev \
                zlib-dev \
                libffi-dev \
                cairo-dev \
                pango-dev \
                gdk-pixbuf-dev \
                # fonts
                ttf-freefont \
                # Base
                make \
            && pip install -r /app/requirements.txt

WORKDIR     /app

ENV         PYTHONUNBUFFERED=1 \
            PYTHONPATH=/app

# Entry:

EXPOSE      80
