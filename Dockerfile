#FROM jupyter/scipy-notebook 
FROM --platform=linux/arm64 jupyter/scipy-notebook 

USER root

#Enabling Binder..................................

#ENV NB_USER rakoon 
#ENV NB_UID 1000
#ENV HOME /home/${NB_USER}
#RUN adduser --disabled-password \
#    --gecos "Default user" \
#    --uid ${NB_UID} \
#    ${NB_USER}
    
#..............................................

ENV PATH=$PATH:/usr/share/perl6/site/bin

RUN buildDeps="libc6-dev libencode-perl libzstd-dev libssl-dev \
               libbz2-dev libreadline-dev libsqlite3-dev llvm \
               libncurses5-dev tk-dev liblzma-dev \
               python-openssl python3-dev libpython3.9-dev" \
    && apt-get update && apt-get upgrade -y \
    && apt-get install -y --no-install-recommends build-essential curl wget $buildDeps \
    && rm -rf /var/lib/apt/lists/* 

RUN mkdir rakudo && git init \
    && wget -O rakudo.tar.gz https://github.com/rakudo/rakudo/releases/download/2022.02/rakudo-2022.02.tar.gz \
    && tar xzf rakudo.tar.gz --strip-components=1 -C rakudo \
    && ( \ 
        cd rakudo \
        && perl Configure.pl --prefix=/usr --gen-moar --gen-nqp \
        --backends=moar --moar-option='--toolchain=gnu' --relocatable \
        && make && make install \
    ) \ 
    && rm -rf rakudo rakudo.tar.gz \
    && git clone -b master --single-branch https://github.com/ugexe/zef.git \
    && cd zef \
    && raku -I. bin/zef install . && cd .. && rm -rf zef \
    && zef install fez \
    && zef install Linenoise App::Mi6 App::Prove6 \
    && zef install JSON::Tiny Digest::HMAC Digest::SHA256::Native \
    && zef install https://github.com/niner/Inline-Python.git --exclude="python3" \
    && zef install https://github.com/p6steve/raku-dan.git \
    && zef install https://github.com/p6steve/raku-dan-pandas.git \
    && git clone https://github.com/p6steve/raku-Dan-Jupyter.git \
    && cp -R raku-Dan-Jupyter/eg ${HOME}
    #&& apt-get purge -y --auto-remove $buildDeps

#ENV TINI_VERSION v0.18.0
#ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini /usr/bin/tini
#RUN chmod +x /usr/bin/tini 
#ENTRYPOINT ["/usr/bin/tini", "--"]
ENTRYPOINT ["/bin/bash"]

#For enabling binder..........................
#COPY ./raku-notebooks/ ${HOME}

#USER root
#RUN chown -R ${NB_USER}:${NB_GID} ${HOME}
#RUN chown -R ${NB_UID}:${NB_USER} ${HOME}
#USER ${NB_USER}
#WORKDIR ${HOME}
#..............................................

#EXPOSE 8888

#CMD ["jupyter", "notebook", "--port=8888", "--no-browser", "--ip=0.0.0.0", "--allow-root"]

