git submodule init & git submodule update & cd dependencies & conda env create --file environment.yml & conda activate i2k-2020 & easy_install pip & (for /F "usebackq tokens=*" %%A in ("requirements.txt") do pip install -e %%A) & cd ..\notebooks & jupyter notebook