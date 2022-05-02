FROM p6steve/raku-dan:pandas-2022.02-amd64

EXPOSE 8888

CMD ["jupyter", "notebook", "--port=8888", "--no-browser", "--ip=0.0.0.0"]
