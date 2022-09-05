FROM p6steve/raku-dan:pandas-2022.02-amd64

RUN zef upgrade Jupyter::Kernel

RUN zef install Data::Generators \
    && zef install Data::Reshapers

RUN git clone https://github.com/p6steve/raku-Dan-Jupyter.git \
    && cp -R raku-Dan-Jupyter/eg ${HOME}

RUN echo 'jupyter lab --port=8888 --no-browser --allow-root --ip=0.0.0.0' > /usr/local/bin/launch.sh \
    && chmod +x /usr/local/bin/launch.sh

#ENTRYPOINT ["/bin/bash"]

#EXPOSE 8888
#CMD ["jupyter", "notebook", "--port=8888", "--no-browser", "--ip=0.0.0.0"]
