#!/bin/sh
cd dependencies
conda env create --file environment.yml
conda activate i2k-2020
easy_install pip
xargs -L 1 pip install < requirements.txt
cd ../notebooks 
upyter notebook
