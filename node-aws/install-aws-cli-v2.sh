#!/bin/bash

wget -O "awscliv2.zip" "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip"

unzip -qq awscliv2.zip

./aws/install -i /usr/local/bin -b /usr/bin
