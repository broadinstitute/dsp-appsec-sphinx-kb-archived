FROM python:3.7-alpine

LABEL "com.github.action.name"="TruffleHog Secrets Scanner"
LABEL "com.github.action.description"="Runs `truffleHog` to check potential secrets committed in source code"
LABEL "com.github.actions.lock"="lock"
LABEL "com.github.actions.color"="blue"

LABEL "repository"="https://github.com/broadinstitute/dsp-security-knowledgebase/github-actions"
LABEL "homepage"="https://github.com/broadinstitute/dsp-security-knowledgebase/github-actions/truffleHog"

WORKDIR /src

RUN apk add --no-cache git jq curl \
 && pip install truffleHog

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]