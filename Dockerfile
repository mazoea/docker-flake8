# run: 
# docker run --rm -it -v %cd%:/opt/src registry.gitlab.com/mazoea-team/docker-flake8 ...
FROM python:3-alpine

WORKDIR /opt/src/

RUN pip install flake8
RUN flake8 --version

entrypoint [ "flake8" ]
cmd [ "--version" ]
