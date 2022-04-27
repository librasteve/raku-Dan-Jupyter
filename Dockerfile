
#must have tag for Binder (not 'latest')
FROM jupyter/scipy-notebook:4b830d5897d8

USER root

USER ${NB_UID}

#FROM --platform=linux/arm64 jupyter/scipy-notebook 

#EXPOSE 8888

#CMD ["jupyter", "notebook", "--port=8888", "--no-browser", "--ip=0.0.0.0", "--allow-root"]

