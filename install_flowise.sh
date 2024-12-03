#!/bin/bash

set -e

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.0/install.sh | bash &&\
export NVM_DIR="$HOME/.nvm" &&\
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" &&\
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" &&\

nvm install 18 &&\
npm install -g yarn &&\
yarn set version latest &&\
yarn global add langchainhub &&\
yarn global add flowise