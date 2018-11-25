#!/usr/bin/env bash

pip install tmuxp
mkdir -p ~/.tmuxp/
cp $(dirname "$0")/rowboat.yaml ~/.tmuxp/
cp $(dirname "$0")/rowboat /usr/local/bin
