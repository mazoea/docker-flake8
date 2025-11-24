FROM python:3.13-alpine

RUN adduser -D flake8

RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir flake8 && \
    rm -rf /root/.cache

WORKDIR /opt/src/

USER flake8

ENTRYPOINT [ "flake8" ]
CMD [ "--version" ]
