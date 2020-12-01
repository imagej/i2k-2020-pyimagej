# PyImageJ: Combining ImageJ and Fiji with tools in the Python ecosystem

This repository houses the PyImageJ workshop from the [I2K 2020
conference](https://www.janelia.org/you-janelia/conferences/from-images-to-knowledge-with-imagej-friends).

## Quick start

Install git and conda, then run:

```
git clone git://github.com/imagej/i2k-2020-pyimagej
cd i2k-2020-pyimagej
conda env create
conda activate i2k-2020-pyimagej
jupyter notebook
```

For further details and other options, see next section.

## Setup and Installation

### 1. Obtain the materials

```
git clone git://github.com/imagej/i2k-2020-pyimagej
```

Or use your favorite [graphical git tool](https://git-scm.com/downloads/guis).
Or [download the tarball](https://github.com/imagej/i2k-2020-pyimagej/archive/main.zip).

Remember where you put this `i2k-2020-pyimagej` directory!

### 2. Install prerequisites

We recommend using [conda](https://conda.io) with PyImageJ. You can install it
via the [miniconda](https://docs.conda.io/en/latest/miniconda.html) installer.

If you prefer to use plain pip, or pip with virtualenv, that is OK too.
In that case, you will need to install the following things:

* Python 3 – 3.6, 3.7, or 3.8 recommended
* OpenJDK 8 or 11 – any flavor is fine;
  [Zulu JDK+FX 8](https://www.azul.com/downloads/zulu-community/?version=java-8-lts&package=jdk-fx)
  works well
* [Apache Maven](https://maven.apache.org/)

### 3. Install packages

* With conda:
  ```
  cd i2k-2020-pyimagej
  conda env create
  ```

* With pip:
  ```
  cd i2k-2020-pyimagej
  pip install -r requirements.txt
  jupyter contrib nbextension install
  ```

### 4. Open the notebooks

* With conda:
  ```
  conda activate pyimagej
  jupyter notebook
  ```
* With pip:
  ```
  jupyter notebook
  ```

And then, in your web browser, click on the notebooks of interest!

## Pitfalls and Troubleshooting

* **DO NOT** run your terminal as an administrator (Windows),
  or your conda or pip commands as `sudo` (Mac/Linux).
