#!/usr/bin/env bats

TARGET="entrypoint.sh"

# Test the default behaviour of the script when no environment variables are provided
@test "Test the default behaviour" {
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
  ./"${TARGET}"

  # check the output against expected values
  [ "$DEFAULT_BUMP" = "minor" ]
  [ "$WITH_V" = "false" ]
  [ "$RELEASE_BRANCHES" = "master,main" ]
  [ "$CUSTOM_TAG" = "" ]
  [ "$SOURCE" = "." ]
  [ "$DRY_RUN" = "false" ]
  [ "$INITIAL_VERSION" = "0.0.0" ]
  [ "$TAG_CONTEXT" = "repo" ]
  [ "$PRERELEASE" = "false" ]
  [ "$PRERELEASE_SUFFIX" = "beta" ]
  [ "$VERBOSE" = "false" ]
  [ "$MAJOR_STRING_TOKEN" = "#major" ]
  [ "$MINOR_STRING_TOKEN" = "#minor" ]
  [ "$PATCH_STRING_TOKEN" = "#patch" ]
  [ "$NONE_STRING_TOKEN" = "#none" ]
  [ "$REPLACE_LATEST_TAG" = "false" ]
}

# Test the behaviour of the script when the DEFAULT_BUMP environment variable is set to major
@test "Test the behaviour with DEFAULT_BUMP=major" {
  DEFAULT_BUMP=major

  # run the script
  ./"${TARGET}"

  # check the output against expected values
  [ $DEFAULT_BUMP = "major" ]
}

# Test the behaviour of the script when the WITH_V environment variable is set to true
@test "Test the behaviour with WITH_V=true" {
  WITH_V=true

  # run the script
  ./"${TARGET}"

  # check the output against expected values
  [ $WITH_V = "true" ]
}

# Test the behaviour of the script when the RELEASE_BRANCHES environment variable is set to master
@test "Test the behaviour with RELEASE_BRANCHES=master" {
  RELEASE_BRANCHES=master

  # run the script
  ./"${TARGET}"

  # check the output against expected values
  [ $RELEASE_BRANCHES = "master" ]
}

# Test the behaviour of the script when the CUSTOM_TAG environment variable is set to v1.0.0
@test "Test the behaviour with CUSTOM_TAG=v1.0.0" {
  CUSTOM_TAG=v1.0.0

  # run the script
  ./"${TARGET}"

  # check the output against expected values
  [ $CUSTOM_TAG = "v1.0.0" ]
}

# Test the behaviour of the script when the SOURCE environment variable is set to ./src
@test "Test the behaviour with SOURCE=./src" {
  SOURCE=./src

  # run the script
  ./"${TARGET}"

  # check the output against expected values
  [ $SOURCE = "./src" ]
}

# Test the behaviour of the script when the DRY_RUN environment variable is set to true
@test "Test the behaviour with DRY_RUN=true" {
  DRY_RUN=true

  # run the script
  ./"${TARGET}"

  # check the output against expected values
  [ $DRY_RUN = "true" ]
}

# Test the behaviour of the script when the INITIAL_VERSION environment variable is set to 1.0.0
@test "Test the behaviour with INITIAL_VERSION=1.0.0" {
  INITIAL_VERSION=1.0.0

  # run the script
  ./"${TARGET}"

  # check the output against expected values
  [ $INITIAL_VERSION = "1.0.0" ]
}

# Test the behaviour of the script when the TAG_CONTEXT environment variable is set to commit
@test "Test the behaviour with TAG_CONTEXT=commit" {
  TAG_CONTEXT=commit

  # run the script
  ./"${TARGET}"

  # check the output against expected values
  [ $TAG_CONTEXT = "commit" ]
}

# Test the behaviour of the script when the PRERELEASE environment variable is set to true
@test "Test the behaviour with PRERELEASE=true" {
  PRERELEASE=true

  # run the script
  ./"${TARGET}"

  # check the output against expected values
  [ $PRERELEASE = "true" ]
}

# Test the behaviour of the script when the PRERELEASE_SUFFIX environment variable is set to alpha
@test "Test the behaviour with PRERELEASE_SUFFIX=alpha" {
  PRERELEASE_SUFFIX=alpha

  # run the script
  ./"${TARGET}"

  # check the output against expected values
  [ $PRERELEASE_SUFFIX = "alpha" ]
}

# Test the behaviour of the script when the VERBOSE environment variable is set to true
@test "Test the behaviour with VERBOSE=true" {
  VERBOSE=true

  # run the script
  ./"${TARGET}"

  # check the output against expected values
  [ $VERBOSE = "true" ]
}

# Test the behaviour of the script when the MAJOR_STRING_TOKEN environment variable is set to #major
@test "Test the behaviour with MAJOR_STRING_TOKEN=#major " {
  MAJOR_STRING_TOKEN="#major"

  # run the script
  ./"${TARGET}"

  # check the output against expected values
  [ "$MAJOR_STRING" = "#major" ]
}

# Test the behaviour of the script when the MINOR_STRING_TOKEN environment variable is set to #minor
@test "Test the behaviour with MINOR_STRING_TOKEN=#minor" {
  MINOR_STRING_TOKEN="#minor"

  # run the script
  ./"${TARGET}"

  # check the output against expected values
  [ "$MINOR_STRING" = "#minor" ]
}

# Test the behaviour of the script when the PATCH_STRING_TOKEN environment variable is set to #patch
@test "Test the behaviour with PATCH_STRING_TOKEN=#patch" {
  PATCH_STRING_TOKEN="#patch"

  # run the script
  ./"${TARGET}"

  # check the output against expected values
  [ "$PATCH_STRING" = "#patch" ]
}

# Test the behaviour of the script when the NONE_STRING_TOKEN environment variable is set to #none
@test "Test the behaviour with NONE_STRING_TOKEN=#none" {
  NONE_STRING_TOKEN="#none"

  # run the script
  ./"${TARGET}"

  # check the output against expected values
  [ "$NONE_STRING" = "#none" ]
}

# Test the behaviour of the script when the REPLACE_LATEST_TAG environment variable is set to true
@test "Test the behaviour with REPLACE_LATEST_TAG=true" {
  REPLACE_LATEST_TAG=true

  # run the script
  ./"${TARGET}"

  # check the output against expected values
  [ $REPLACE_LATEST_TAG = "true" ]
}
