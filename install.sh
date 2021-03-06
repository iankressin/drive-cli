#!/bin/bash
HANA_DIR="$HOME/.hana"
BIN_DIR="$HANA_DIR/bin"

function install {
  echo "Installing Hana CLI ..."

  LATEST=$(curl -qs https://api.github.com/repos/iankressin/hana-cli/releases/latest | grep tag_name | head -n 1 | cut -d '"' -f 4);
  URL="https://github.com/iankressin/hana-cli/releases/download/${LATEST}/hana-cli"

  echo $URL

  if [ ! -d $HANA_DIR ]; then
    echo "--> Configuring directories ..."
    mkdir $HANA_DIR
    cd $HANA_DIR
    if [ ! -d $BIN_DIR ]; then
      mkdir $BIN_DIR 
      cd $BIN_DIR
    fi
  else
    cd $BIN_DIR
  fi

  echo "--> Downloading ..."
  bash -c "ls"
  bash -c "curl --fail -# -L $URL > hana"
  BIN="hana"
	  chmod +x $BIN || fail "chmod +x failed"

  echo "*** DONE ***"
  echo "Now, please add $BIN_DIR to your PATH"
}

install
