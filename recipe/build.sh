#!/bin/bash

set -e
set -x

echo 'DEBUGGING.'
find /usr/ -name 'mysql.h'

$PYTHON setup.py install --single-version-externally-managed --record record.txt
