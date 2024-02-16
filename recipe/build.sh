#!/bin/bash

set -e
set -x

C_INCLUDE_PATH="/usr/include/mysql:$C_INCLUDE_PATH" ## for C compiler
export C_INCLUDE_PATH

$PYTHON setup.py install --single-version-externally-managed --record record.txt
