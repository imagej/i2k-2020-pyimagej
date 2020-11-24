# I2K 2020 
PyImageJ: Combining ImageJ and Fiji with tools in the Python ecosystem

## Setup and Installation

### Pre-requisites

Install the latest [miniconda](https://docs.conda.io/en/latest/miniconda.html). Note that your conda installation is tied to a particular terminal, and you will need to use this terminal to setup and manage your conda environment(s).

Note: **do not** run your conda terminal as an administrator (Windows) or your conda commands as `sudo` (Mac/Linux).

### Installation

Clone this repository and run `setup.sh` or `setup.bat`, as appropriate for your OS.


### Troubleshooting

#### CommandNotFoundError

If you see this message while running `setup.sh`:

```
CommandNotFoundError: Your shell has not been properly configured to use 'conda activate'.
To initialize your shell, run

    $ conda init <SHELL_NAME>
```

it is likely because the script is running in `bash` but your `conda` environment is initialized in a different shell. You should be able to fix this by changing the first line of `setup.sh` to:
```
#!/bin/[your_shell]
```

If that doesn't work and you are using a specialized terminal program, try:
1. Switching to your system's standard terminal 
1. Run `conda init` in the standard terminal to set it as your designated `conda` terminal
1. Re-run `setup.sh` from the standard terminal
