#!/bin/bash

GIT_URL="https://raw.githubusercontent.com/daher13/dotvm/refs/heads/main/dotvm"

INSTALL_DIR=.local/share/dotvm

mkdir -p $INSTALL_DIR/bin

curl $GIT_URL > $INSTALL_DIR/bin/dotvm

echo >> ~/.bashrc
echo "DOTVM_PATH=\"$HOME/$INSTALL_DIR\"" >> ~/.bashrc
echo 'if [ -d "$DOTVM_PATH" ]; then' >> ~/.bashrc
echo '    export PATH="$DOTVM_PATH/dotnet-sdk:$DOTVM_PATH/bin:$PATH"' >> ~/.bashrc
echo 'fi' >> ~/.bashrc

chmod +x $INSTALL_DIR/bin/dotvm
