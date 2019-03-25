#!/usr/bin/env sh

set -e

# For https://github.com
if [ -n "$GITHUB_TOKEN" ]; then
  git config --global url."https://${GITHUB_TOKEN}@github.com/".insteadOf "https://github.com/"
  cat ~/.gitconfig 1> /dev/null
fi

# For https://bitbucket.org
# Ref: https://confluence.atlassian.com/bitbucket/oauth-on-bitbucket-cloud-238027431.html
if [ -n "$BITBUCKET_TOKEN" ]; then
  git config --global url."https://x-token-auth:${BITBUCKET_TOKEN}@bitbucket.org/".insteadOf "https://bitbucket.org/"
  cat ~/.gitconfig 1> /dev/null
fi

# For https://gitlab.com
# Ref: https://stackoverflow.com/questions/25409700/using-gitlab-token-to-clone-without-authentication
if [ -n "$GITLAB_TOKEN" ]; then
  git config --global url."https://oauth2:${GITLAB_TOKEN}@gitlab.com/".insteadOf "https://gitlab.com/"
  cat ~/.gitconfig 1> /dev/null
fi

if [ "$1" = "go" ]; then
  sh -c "$*"
else
  sh -c "go $*"
fi
