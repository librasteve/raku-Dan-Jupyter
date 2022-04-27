#FROM jupyter/scipy-notebook #must have tag for Binder
FROM jupyter/scipy-notebook:4b830d5897d8

#FROM --platform=linux/arm64 jupyter/scipy-notebook 

#EXPOSE 8888

#CMD ["jupyter", "notebook", "--port=8888", "--no-browser", "--ip=0.0.0.0", "--allow-root"]

