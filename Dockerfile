FROM python:3.7-alpine


LABEL name="pycodestyle-action"
LABEL version="1.0.0"
LABEL repository="http://github.com/ankitvgupta/pycodestyle"
LABEL homepage="http://github.com/ankitvgupta/pycodestyle"

LABEL maintainer="Ankit Gupta <ankit45@gmail.com>"
LABEL com.github.actions.name="pycodestyle-action"
LABEL com.github.actions.description="Run Pycodestyle on pull request"
LABEL com.github.actions.icon="git-pull-request"
LABEL com.github.actions.color="purple"



RUN pip install pycodestyle
WORKDIR /github/workspace
COPY entrypoint.sh .

ENTRYPOINT ["./entrypoint.sh"]
