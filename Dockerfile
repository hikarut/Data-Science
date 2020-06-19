FROM jupyter/datascience-notebook
USER root

RUN pip install jupyterlab==1.0
RUN pip install japanize-matplotlib

# decisionTree
RUN pip install pydotplus
RUN pip install dtreeviz
RUN apt-get dist-upgrade
RUN apt-get update
RUN apt-get install -y build-essential graphviz-dev graphviz pkg-config
RUN pip install graphviz

RUN jupyter serverextension enable --py jupyterlab
RUN jupyter labextension install jupyterlab_vim

EXPOSE 10000
CMD ["bash"]
#CMD ["jupyter lab --port 10000 --allow-root"]
