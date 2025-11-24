FROM python:alpine

RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir flake8 && \
    rm -rf /root/.cache

WORKDIR /opt/src/
RUN adduser -D maz
USER maz

ENTRYPOINT [ "flake8" ]
CMD [ "--version" ]
