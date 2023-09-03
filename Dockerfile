FROM librasteve/rakudo:ipyjk

USER root

RUN zef install https://github.com/librasteve/raku-Dan-Pandas.git

RUN zef install https://github.com/librasteve/raku-Dan-Polars.git
RUN git clone https://github.com/librasteve/raku-Dan-Polars.git

RUN zef upgrade Jupyter::Kernel

RUN zef install Data::Generators \
    && zef install Data::Reshapers

RUN git clone https://github.com/librasteve/raku-Dan-Jupyter.git \
    && cp -R raku-Dan-Jupyter/eg ${HOME}

#USER ${NB_UID}

ENTRYPOINT ["/bin/bash"]

#EXPOSE 8888
#CMD ["jupyter", "notebook", "--port=8888", "--no-browser", "--ip=0.0.0.0", "--allow-root"]
