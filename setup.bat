git submodule init & git submodule update & (for /F "usebackq tokens=*" %%A in ("dependencies/requirements.txt") do pip install -e %%A) 
