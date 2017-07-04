#!/bin/bash

WORKSPACE=`pwd`
GIT_HOOK_DIR=${WORKSPACE}/.git/hooks

CONFIG_URL="https://raw.github.com/intowow/ce-backend-js-linter/master/eslintrc.json"
PRECOMMIT_SCRIPTS="https://raw.github.com/intowow/ce-backend-js-linter/master/git_hooks/pre-commit"

if [ ! -d "${WORKSPACE}/.git" ];
then
  echo -e "\033[41;37mFailed to install. Is this a valid git repository folder?\033[0m"
  exit 1
fi

echo -e "\033[32mStart to install ESlint...\033[0m"

# Download config
wget ${CONFIG_URL} -O ${WORKSPACE}/.eslintrc.json

# Download hook scripts
rm ${GIT_HOOK_DIR}/pre-commit
wget ${PRECOMMIT_SCRIPTS} -P ${GIT_HOOK_DIR}/

# Make script executable
chmod +x ${GIT_HOOK_DIR}/*

# Finished
echo -e "\033[32mInstallation finished.\033[0m"
