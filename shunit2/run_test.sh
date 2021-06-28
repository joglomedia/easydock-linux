#!/bin/bash

# First example from https://github.com/kward/shunit2

script_under_test=$(basename "$0")

# Check EasyDock executable script
if [ -x ../src/easydock ]; then
    ED=../src/easydock
else
    echo "EasyDock executable file (src/easydock) not found."
    exit 1
fi

testEqualityEasyDockInit()
{
    ENV_FILE=""
    ED_DIR=""

    bash "${ED}" init

    [ -f .env.easydock ] && ENV_FILE=".env.easydock"
    assertEquals ".env.easydock" "${ENV_FILE}"

    [ -d .easydock ] && ED_DIR=".easydock"
    assertEquals ".easydock" "${ED_DIR}"
}

# load shunit2
. /usr/local/bin/shunit2