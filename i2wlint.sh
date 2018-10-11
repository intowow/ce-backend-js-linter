#!/bin/bash

GIT_HOME=`git rev-parse --show-toplevel`

# Jump to git root dir
pushd ${GIT_HOME}


ESLINT_BIN=$(find . -path "*/eslint-config-i2w-backend-base/node_modules/.bin/eslint" -print -quit)
# Is eslint installed?
which $ESLINT_BIN > /dev/null 2>&1
if [ $? -ne 0 ];
then
  ESLINT_BIN=$(find . -path "*/node_modules/.bin/eslint" -print -quit)
  which $ESLINT_BIN > /dev/null 2>&1
  if [ $? -ne 0 ];
  then
  echo -e "\033[41;37mSomething wrong with ESLint:\033[0m"
  echo "Cannot find ESLint binary in eslint-config-i2w-backend-base."
  echo "Please try to re-install js-linter. ($ yarn add --dev git+https://github.com/intowow/ce-backend-js-linter.git)"
  exit 1
  fi
fi

LOCAL_ESLINT_CONFIG=$(find . -name .i2w-eslintrc.yaml -print -quit)

# Run ESLint
$ESLINT_BIN -c $LOCAL_ESLINT_CONFIG "$@"
ESLINT_EXIT="$?"

# Back to original dir
popd

# ESLint result
if [[ "${ESLINT_EXIT}" == 0 ]];
then
  echo -e "\033[31mCOMMIT OR FIX SUCCEEDED\033[0m"
else
  echo -e "\033[41;37mCOMMIT OR FIX NOT ALLOWED:\033[0m Please fix ESLint errors."
  exit 1
fi

exit $?
