[![License: Artistic-2.0](https://img.shields.io/badge/License-Artistic%202.0-0298c3.svg)](https://opensource.org/licenses/Artistic-2.0)
[![raku-dan:jupyter -> DH](https://github.com/librasteve/raku-Dan-Jupyter/actions/workflows/jupyter-weekly.yaml/badge.svg)](https://github.com/librasteve/raku-Dan-Jupyter/actions/workflows/jupyter-weekly.yaml)

## raku-Dan-Jupyter - WIP
Jupyter workbook examples for raku [Dan](https://github.com/librasteve/raku-Dan) and [Dan::Pandas](https://github.com/librasteve/raku-Dan-Pandas)

### Installation
Based on the Dockerfile chain [(1)](https://github.com/librasteve/raku-Dan-Jupyter/blob/master/Dockerfile) <= [(2)](https://github.com/librasteve/raku-Dan-Pandas/blob/main/Dockerfile) <= [(3)](https://github.com/librasteve/raku-Dockerfiles)
- ```docker run -it librasteve/raku-dan:jupyter-amd64```
- ```jupyter notebook --port=8888 --no-browser --allow-root --ip=0.0.0.0```
- this will open a jupyter-notebook session in your browser (copy & paste token from CLI)
- in the browser, go to /eg, open a notebook and then Run each cell - explore & enjoy!

### Inspired by
* Brian Duggan's perl6 jupyter-notebook at <https://github.com/bduggan/p6-jupyter-kernel>

### Copyright
copyright(c) 2022 Henley Cloud Consulting Ltd.
