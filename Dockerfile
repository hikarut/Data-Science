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

# Text
RUN pip install wordcloud
RUN pip install mecab-python3==0.996.5
RUN apt-get update \
    && apt-get install -y mecab \
    && apt-get install -y mecab-ipadic \
    && apt-get install -y libmecab-dev \
    && apt-get install -y mecab-ipadic-utf8 \
    && apt-get install -y swig \
    && apt-get install -y file
RUN git clone --depth 1 https://github.com/neologd/mecab-ipadic-neologd.git \
    && cd mecab-ipadic-neologd \
    && bin/install-mecab-ipadic-neologd -n -y

# SpreadSheet
RUN pip install gspread
RUN pip install oauth2client

EXPOSE 10000
CMD ["bash"]
#CMD ["jupyter lab --port 10000 --allow-root"]
