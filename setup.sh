#!/bin/sh
git submodule init
git submodule update
xargs -L 1 pip install < dependencies/requirements.txt
