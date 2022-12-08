# hadolint ignore=DL3007
FROM ghcr.io/cattledip/github-tag-action:latest

LABEL "repository"="https://github.com/cattledip/github-tag-action"
LABEL "homepage"="https://github.com/cattledip/github-tag-action"
LABEL "maintainer"="cattledip"

# This Dockerfile is empty, it simply pulls a prebuilt image to speed up the Action.
