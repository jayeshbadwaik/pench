#!/bin/bash
set -euo pipefail

SOURCE="${BASH_SOURCE[0]}"
# resolve $SOURCE until the file is no longer a symlink
while [ -h "$SOURCE" ]; do
  DIR="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  # if $SOURCE was a relative symlink, we need to resolve it relative to the
  # path where the symlink file was located
  [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE"
done
SCRIPT_DIRECTORY="$( cd -P "$( dirname "$SOURCE" )" >/dev/null 2>&1 && pwd )"

if [ "$#" -ne 1 ]; then
  echo "Script requires:"
  echo "1. Test Directory"
  exit 1
fi

TEST_DIRECTORY_ROOT=$1
SOURCE_DIRECTORY=$SCRIPT_DIRECTORY/../src

mkdir -p $TEST_DIRECTORY_ROOT

TEST_DIRECTORY=$(mktemp -d -p $TEST_DIRECTORY_ROOT)

for DOCUMENT_TYPE in "article" "beamer" "book" "letter" "report"; do
  $SOURCE_DIRECTORY/bin/sltex.create \
    $DOCUMENT_TYPE \
    $DOCUMENT_TYPE \
    $TEST_DIRECTORY/
  pushd $TEST_DIRECTORY/$DOCUMENT_TYPE
    make debug
  popd
done
