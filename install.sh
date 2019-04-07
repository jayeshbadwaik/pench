#!/bin/bash

#r  Exit on Any Command Failing
set -e
set -o pipefail


if [ "$#" -ne 1 ]; then
  echo "Script requires install path."
  exit 1
fi

INSTALL_PATH=$1/

if  readlink -e "$INSTALL_PATH"; then
  echo "FATAL ERROR: Path Exists. Exiting..."
  exit 1
fi

if  readlink -e "$HOME/texmf/tex"; then
  echo "FATAL ERROR: Path Exists. Exiting..."
  exit 1
fi

mkdir -p $INSTALL_PATH/share
mkdir -p $HOME/texmf
rsync -aAXv bin/ $INSTALL_PATH/bin/
rsync -aAXv share/texmf/ $HOME/texmf/
rsync -aAXv share/pench/ $INSTALL_PATH/share/pench/
texhash

echo "Add the following line to your ~/.profile".
echo 'export PATH=$HOME/system/opt/pench/bin:$PATH'
