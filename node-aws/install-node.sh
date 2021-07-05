#!/bin/bash

touch ~/.bashrc
touch ~/.bash_profile
touch ~/.profile

NVM_VERSION=$(wget -qO- https://api.github.com/repos/nvm-sh/nvm/releases/latest | grep -Po -m 1 '(v\d+\.\d+\.\d+)(?!name)')
wget -qO- "https://raw.githubusercontent.com/nvm-sh/nvm/${NVM_VERSION}/install.sh" | bash

. ~/.nvm/nvm.sh
nvm install --lts --default
NODE_VERSION=$(nvm ls | grep -Po -m 1 '\-\>\s+((iojs\-)?v\d+\.\d+\.\d+)' | grep -Po '(iojs\-)?v\d+\.\d+\.\d+')
nvm use $NODE_VERSION

rm -rf ~/.nvm/.cache ~/.nvm/test ~/.nvm/.git ~/.nvm/.github

npm install -g yarn

ln -sf ~/.nvm/versions/node/${NODE_VERSION}/bin/node /usr/bin/node
ln -sf ~/.nvm/versions/node/${NODE_VERSION}/bin/npm /usr/bin/npm
ln -sf ~/.nvm/versions/node/${NODE_VERSION}/bin/npx /usr/bin/npx
ln -sf ~/.nvm/versions/node/${NODE_VERSION}/bin/yarn /usr/bin/yarn
