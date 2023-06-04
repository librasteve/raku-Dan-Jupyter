FROM librasteve/raku-dan:pandas-amd64

RUN zef upgrade Jupyter::Kernel

RUN zef install Data::Generators \
    && zef install Data::Reshapers

RUN git clone https://github.com/librasteve/raku-Dan-Jupyter.git \
    && cp -R raku-Dan-Jupyter/eg ${HOME}

ENTRYPOINT ["/bin/bash"]

EXPOSE 8888

#CMD ["jupyter", "notebook", "--port=8888", "--no-browser", "--ip=0.0.0.0"]
