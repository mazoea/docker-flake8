FROM python:3-alpine

WORKDIR /opt/src/

RUN pip install --no-cache-dir flake8
RUN flake8 --version

ENTRYPOINT [ "flake8" ]
CMD [ "--version" ]
