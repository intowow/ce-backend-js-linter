#!/bin/bash

WORKSPACE=`pwd`

CONFIG_URL="https://raw.github.com/intowow/ce-backend-js-linter/feature/auto_install_linter/eslintrc.json"
PRECOMMIT_SCRIPTS="https://raw.github.com/intowow/ce-backend-js-linter/feature/auto_install_linter/git_hooks/pre-commit"

if [ -d "${WORKSPACE}/.git" ];
then
  echo -e "\033[41;37mAbort!! Is this a valid git repository folder?\033[0m"
  exit 1
fi

# Download config
wget ${CONFIG_URL} -O ${WORKSPACE}/.eslinter.yaml

# Download hook scripts
HOOK_DIR=${WORK_SPACE}/.git/hooks
wget ${PRECOMMIT_SCRIPTS} -P ${HOOK_DIR}/

# Make script executable
chmod +x ${HOOK_DIR}/*

# Finished
echo -e "\033[32mInstallation finished!\033[0m"
