FROM python:3.7-alpine
RUN pip install pycodestyle

ENTRYPOINT ["pycodestyle"]
