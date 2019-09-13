FROM python:3.7-alpine
RUN pip install pycodestyle
WORKDIR /github/workspace
ENTRYPOINT ["pycodestyle"]
