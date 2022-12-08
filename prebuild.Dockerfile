FROM node:18-alpine

LABEL "repository"="https://github.com/cattledip/github-tag-action"
LABEL "homepage"="https://github.com/cattledip/github-tag-action"
LABEL "maintainer"="CattleDip"

# hadolint ignore=DL3016,DL3018
RUN apk --no-cache add bash git curl jq && npm install -g semver

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
