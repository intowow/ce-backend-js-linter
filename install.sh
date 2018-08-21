#!/bin/bash

WORKSPACE=`git rev-parse --show-toplevel`
if [ $? -ne 0 ];
then
  echo -e "\033[41;37mFailed to install. You should execute this script inside a git repository.\033[0m"
  exit 0
fi

GIT_HOOK_DIR=${WORKSPACE}/.git/hooks
CONFIG_URL="https://raw.github.com/intowow/ce-backend-js-linter/master/eslintrc.yaml"
PRECOMMIT_SCRIPTS="https://raw.github.com/intowow/ce-backend-js-linter/master/git-hooks/pre-commit"

echo -e "\033[32mStart to install ESLint...\033[0m"

# Download config
wget ${CONFIG_URL} -O ${WORKSPACE}/.i2w-eslintrc.yaml

# Download hook scripts
rm ${GIT_HOOK_DIR}/pre-commit || true
wget ${PRECOMMIT_SCRIPTS} -P ${GIT_HOOK_DIR}/

# Make script executable
chmod +x ${GIT_HOOK_DIR}/pre-commit

# Finished
echo -e "\033[32mESLint installed.\033[0m"
