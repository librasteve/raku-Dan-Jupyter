## raku-Dan-Jupyter - WIP
Jupyter workbook examples for raku [Dan](https://github.com/p6steve/raku-Dan) and [Dan::Pandas](https://github.com/p6steve/raku-Dan-Pandas)

Top level raku Data ANalysis Module that provides a base set of raku-style datatype roles, accessors & methods




TODOs
- get working Dockerfile ... Jupyter scipy notebook + raku build - DONE
- add synopsis as notebook - DONE
- partition DFs - shorter cycle and better Binder chance

# Rebuild Docker Image
```
docker build -t p6steve/raku-dan:jupyter-2022.02-amd64 --platform=linux/amd64 .
docker push p6steve/raku-dan:jupyter-2022.02-amd64
```
(you need to be p6steve to do this docker push ;-) )



vvvvvvvvvv FIXME

# Instructions for Jupyter Notebook on Binder
To launch with Binder:

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/p6steve/raku-Dan-Jupyter/HEAD)

- click the badge above, sometimes the server will be built and takes about 60 secs to launch
- if you are unlucky, a new server build can take 30-40sec, please be patient (show logs to see the action)

xxx

# Instructions for Jupyter Notebook local
To use follow these examples:
- ```zef install --verbose https://github.com/p6steve/raku-Dan.git```
- do the Quick Start here Brian Duggan perl6 jupyter-notebook at <https://github.com/bduggan/p6-jupyter-kernel>
- ```git clone https://github.com/p6steve/raku-Physics-Measure-Jupyter.git``` this repo on your machine and ```cd raku-Physics-Measure-Jupyter``` into the new dir
- command line ```jupyter notebook``` - this will open a jupyter-notebook session in your browser
- in the browser, go to /eg and click Synopsis.ipynb, then Run each cell - explore & enjoy!

# Inspired by
* Brian Duggan's perl6 jupyter-notebook at <https://github.com/bduggan/p6-jupyter-kernel>

# Dockerfiles
### /Dockerfile is for Jupyter / Binder on amd64
- Emphasis on fast launch FROM p6steve/rakudo:rpmnj-amd64-2021.05 prebuilt image
### df-amd/Dockerfile is recipe for p6steve/rakudo:rpmnj-amd64-2021.05
- Emphasis on build from scratch FROM sumankhanal/rakudo:2021.05 viz. [sumanstats/raku-notebook](https://github.com/sumanstats/raku-notebook)
### df-arm/Dockerfile is recipe for p6steve/rakudo:rpmnj-arm64-2021.05
- Emphasis on rapid development for ubuntu on macOS M1 with layered approach FROM p6steve/rakudo:notebook-arm64-2021.05
- Drop support for Binder (Binder will not run arm64 image)
- linux/arm64 toolchain: ubuntu... > notebook... > rpmnj... (https://hub.docker.com/repository/docker/p6steve/rakudo)
- align github/p6steve:  rakudo... > notebook... > rpmnj (raku-Physics-Measure:Navigation:Jupyter)
