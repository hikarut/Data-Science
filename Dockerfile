FROM jupyter/datascience-notebook
USER root

RUN pip install jupyterlab==1.0
RUN jupyter serverextension enable --py jupyterlab
RUN jupyter labextension install jupyterlab_vim

EXPOSE 10000
CMD ["bash"]
#CMD ["jupyter lab --port 10000 --allow-root"]
