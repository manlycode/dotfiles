#!/usr/bin/env bash

# asdf plugin-add python
asdf plugin add python https://github.com/asdf-community/asdf-python.git
asdf install python
asdf reshim python
python -m pip install --upgrade pip
asdf reshim python
pip install basedpyright
pip3 install basedpyright
