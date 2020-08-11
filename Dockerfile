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

# nbextension
RUN pip install jupyter-contrib-nbextensions
RUN pip install jupyter-nbextensions-configurator
RUN jupyter contrib nbextension install --user
RUN jupyter nbextensions_configurator enable --user

# CausalImpact
RUN pip install pycausalimpact

EXPOSE 10000
CMD ["bash"]
#CMD ["jupyter lab --port 10000 --allow-root"]
