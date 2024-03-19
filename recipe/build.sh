#!/bin/bash

set -e
set -x

FLAGS_NEEDED="-Wno-error=implicit-function-declaration"
if [[ $target_platform == osx-arm64  ]]; then
  export CFLAGS="${CFLAGS-} ${FLAGS_NEEDED}"
  export CXXFLAGS="${CXXFLAGS-} ${FLAGS_NEEDED}"
fi

$PYTHON setup.py install --single-version-externally-managed --record record.txt
