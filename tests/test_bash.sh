#!/usr/bin/env bash

# Test the default behaviour of the script when no environment variables are provided
DEFAULT_BUMP=${DEFAULT_BUMP:-minor}
WITH_V=${WITH_V:-false}
RELEASE_BRANCHES=${RELEASE_BRANCHES:-master,main}
CUSTOM_TAG=${CUSTOM_TAG:-}
SOURCE=${SOURCE:-.}
DRY_RUN=${DRY_RUN:-false}
INITIAL_VERSION=${INITIAL_VERSION:-0.0.0}
TAG_CONTEXT=${TAG_CONTEXT:-repo}
PRERELEASE=${PRERELEASE:-false}
PRERELEASE_SUFFIX=${PRERELEASE_SUFFIX:-beta}
VERBOSE=${VERBOSE:-false}
MAJOR_STRING_TOKEN=${MAJOR_STRING_TOKEN:-#major}
MINOR_STRING_TOKEN=${MINOR_STRING_TOKEN:-#minor}
PATCH_STRING_TOKEN=${PATCH_STRING_TOKEN:-#patch}
NONE_STRING_TOKEN=${NONE_STRING_TOKEN:-#none}
REPLACE_LATEST_TAG=${REPLACE_LATEST_TAG:-false}

# run the script
TARGET='entrypoint.sh'

./${TARGET}

# check the output against expected values
if [[ $DEFAULT_BUMP != "minor" || $WITH_V != "false" || $RELEASE_BRANCHES != "master,main" || $CUSTOM_TAG != "" || $SOURCE != "." || $DRY_RUN != "false" || $INITIAL_VERSION != "0.0.0" || $TAG_CONTEXT != "repo" || $PRERELEASE != "false" || $PRERELEASE_SUFFIX != "beta" || $VERBOSE != "false" || $MAJOR_STRING_TOKEN != "#major" || $MINOR_STRING_TOKEN != "#minor" || $PATCH_STRING_TOKEN != "#patch" || $NONE_STRING_TOKEN != "#none" || $REPLACE_LATEST_TAG != "false" ]]; then
  echo "Test case 1 failed"
else
  echo "Test case 1 passed"
fi

# Test the behaviour of the script when the DEFAULT_BUMP environment variable is set to major
DEFAULT_BUMP=major

# run the script
./${TARGET}

# check the output against expected values
if [[ $DEFAULT_BUMP != "major" ]]; then
  echo "Test case 2 failed"
else
  echo "Test case 2 passed"
fi

# Test the behaviour of the script when the WITH_V environment variable is set to true
WITH_V=true

# run the script
./${TARGET}

# check the output against expected values
if [[ $WITH_V != "true" ]]; then
  echo "Test case 3 failed"
else
  echo "Test case 3 passed"
fi

# Test the behaviour of the script when the RELEASE_BRANCHES environment variable is set to develop,release
RELEASE_BRANCHES=develop

# Test the behaviour of the script when the DEFAULT_BUMP environment variable is set to major
DEFAULT_BUMP=major

# run the script
./${TARGET}

# check the output against expected values
if [[ $DEFAULT_BUMP != "major" ]]; then
  echo "Test case 2 failed"
else
  echo "Test case 2 passed"
fi

# Test the behaviour of the script when the WITH_V environment variable is set to true
WITH_V=true

# run the script
./${TARGET}

# check the output against expected values
if [[ $WITH_V != "true" ]]; then
  echo "Test case 3 failed"
else
  echo "Test case 3 passed"
fi

# Test the behaviour of the script when the RELEASE_BRANCHES environment variable is set to develop,release
RELEASE_BRANCHES=develop,release

# run the script
./${TARGET}

# check the output against expected values
if [[ $RELEASE_BRANCHES != "develop,release" ]]; then
  echo "Test case 4 failed"
else
  echo "Test case 4 passed"
fi

# Test the behaviour of the script when the CUSTOM_TAG environment variable is set to my-custom-tag
CUSTOM_TAG=my-custom-tag

# run the script
./${TARGET}

# check the output against expected values
if [[ $CUSTOM_TAG != "my-custom-tag" ]]; then
  echo "Test case 5 failed"
else
  echo "Test case 5 passed"
fi

# Test the behaviour of the script when the SOURCE environment variable is set to src
SOURCE=src

# run the script
./${TARGET}

# check the output against expected values
if [[ $SOURCE != "src" ]]; then
  echo "Test case 6 failed"
else
  echo "Test case 6 passed"
fi

# Test the behaviour of the script when the DRY_RUN environment variable is set to true
DRY_RUN=true

# run the script
./${TARGET}

# check the output against expected values
if [[ $DRY_RUN != "true" ]]; then
  echo "Test case 7 failed"
else
  echo "Test case 7 passed"
fi

# Test the behaviour of the script when the INITIAL_VERSION environment variable is set to 1.0.0
INITIAL_VERSION=1.0.0

# run the script
./${TARGET}

# check the output against expected values
if [[ $INITIAL_VERSION != "1.0.0" ]]; then
  echo "Test case 8 failed"
else
  echo "Test case 8 passed"
fi

# Test the behaviour of the script when the TAG_CONTEXT environment variable is set to local
TAG_CONTEXT=local

# run the script
./${TARGET}

# check the output against expected values
if [[ $TAG_CONTEXT != "local" ]]; then
  echo "Test case 9 failed"
else
  echo "Test case 9 passed"
fi

# Test the behaviour of the script when the PRERELEASE environment variable is set to true
PRERELEASE=true

# run the script
./${TARGET}

# check the output against expected values
if [[ $PRERELEASE != "true" ]]; then
  echo "Test case 10 failed"
else
  echo "Test case 10 passed"
fi

# Test the behaviour of the script when the PRERELEASE_SUFFIX environment variable is set to alpha
PRERELEASE_SUFFIX=alpha

# run the script
./${TARGET}

# check the output against expected values
if [[ $PRERELEASE_SUFFIX != "alpha" ]]; then
  echo "Test case 11 failed"
else
  echo "Test case 11 passed"
fi

# Test the behaviour of the script when the VERBOSE environment variable is set to true
VERBOSE=true

# run the script
./${TARGET}

# check the output against expected values
if [[ $VERBOSE != "true" ]]; then
  echo "Test case 12 failed"
else
  echo "Test case 12 passed"
fi

# Test the behaviour of the script when the MAJOR_STRING_TOKEN environment variable is set to MAJOR
MAJOR_STRING_TOKEN=MAJOR

# run the script
./${TARGET}

# check the output against expected
# Test the behaviour of the script when the MAJOR_STRING_TOKEN environment variable is set to MAJOR
MAJOR_STRING_TOKEN=MAJOR

# run the script
./${TARGET}

# check the output against expected values
if [[ $MAJOR_STRING_TOKEN != "MAJOR" ]]; then
  echo "Test case 13 failed"
else
  echo "Test case 13 passed"
fi

# Test the behaviour of the script when the MINOR_STRING_TOKEN environment variable is set to MINOR
MINOR_STRING_TOKEN=MINOR

# run the script
./${TARGET}

# check the output against expected values
if [[ $MINOR_STRING_TOKEN != "MINOR" ]]; then
  echo "Test case 14 failed"
else
  echo "Test case 14 passed"
fi

# Test the behaviour of the script when the PATCH_STRING_TOKEN environment variable is set to PATCH
PATCH_STRING_TOKEN=PATCH

# run the script
./${TARGET}

# check the output against expected values
if [[ $PATCH_STRING_TOKEN != "PATCH" ]]; then
  echo "Test case 15 failed"
else
  echo "Test case 15 passed"
fi

# Test the behaviour of the script when the NONE_STRING_TOKEN environment variable is set to NONE
NONE_STRING_TOKEN=NONE

# run the script
./${TARGET}

# check the output against expected values
if [[ $NONE_STRING_TOKEN != "NONE" ]]; then
  echo "Test case 16 failed"
else
  echo "Test case 16 passed"
fi

# Test the behaviour of the script when the REPLACE_LATEST_TAG environment variable is set to true
REPLACE_LATEST_TAG=true

# run the script
./${TARGET}

# check the output against expected values
if [[ $REPLACE_LATEST_TAG != "true" ]]; then
  echo "Test case 17 failed"
else
  echo "Test case 17 passed"
fi
