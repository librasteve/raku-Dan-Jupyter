[![License: Artistic-2.0](https://img.shields.io/badge/License-Artistic%202.0-0298c3.svg)](https://opensource.org/licenses/Artistic-2.0)
[![raku-dan:jupyter -> DH](https://github.com/p6steve/raku-Dan-Jupyter/actions/workflows/jupyter-weekly.yaml/badge.svg)](https://github.com/p6steve/raku-Dan-Jupyter/actions/workflows/jupyter-weekly.yaml)

## raku-Dan-Jupyter - WIP
Jupyter workbook examples for raku [Dan](https://github.com/p6steve/raku-Dan) and [Dan::Pandas](https://github.com/p6steve/raku-Dan-Pandas)

Top level raku Data ANalysis Module that provides a base set of raku-style datatype roles, accessors & methods

### Instructions for Jupyter Lab on AWS LightSail
- launch an AWS LightSail container from Docker hub
- select ```p6steve/raku-dan:jupyter-2022.02-amd64```
- adjust the settings per the image below (port=8888, launch.sh)
- grab the Jupyter token from the LightSail logs
- click the LightSail image link to open and logon
- in the browser, go to /eg, open a notebook and then Run each cell - explore & enjoy!

![image](https://raw.githubusercontent.com/p6steve/raku-Dan-Jupyter/master/Screenshot%202022-05-16%20at%2020.03.57.png)

### Instructions for Jupyter Lab local
To use follow these examples:
- ```zef install --verbose https://github.com/p6steve/raku-Dan.git```
- do the Quick Start here Brian Duggan perl6 jupyter-notebook at <https://github.com/bduggan/p6-jupyter-kernel>
- ```git clone https://github.com/p6steve/raku-Dan-Jupyter.git``` this repo on your machine and ```cd raku-Dan-Jupyter``` into the new dir
- command line ```jupyter lab --port=8888 --no-browser --allow-root --ip=0.0.0.0``` 
- this will open a jupyter-notebook session in your browser
- in the browser, go to /eg, open a notebook and then Run each cell - explore & enjoy!

### Rebuild Docker Image
```
docker build -t p6steve/raku-dan:jupyter-2022.02-amd64 --platform=linux/amd64 .
docker push p6steve/raku-dan:jupyter-2022.02-amd64
```
(you need to be p6steve to do this docker push ;-) )

### Inspired by
* Brian Duggan's perl6 jupyter-notebook at <https://github.com/bduggan/p6-jupyter-kernel>

copyright(c) 2022 Henley Cloud Consulting Ltd.
