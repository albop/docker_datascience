FROM jupyter/datascience-singleuser
USER jovyan
RUN conda install -y -c cpcloud npm=1.4.12
RUN git clone -b layout https://github.com/SylvainCorlay/bqplot.git && \
    cd bqplot && \
    pip install . &&\
    jupyter nbextension install --py  --user bqplot &&\
    jupyter nbextension enable --py --user bqplot &&\
    cd .. &&\
    rm -rf bqplot
RUN ls && \
    git clone https://github.com/jupyter/jupyter-js-notebook.git && \
    cd jupyter-js-notebook && \
    npm install && \
    npm run build
RUN git clone https://github.com/jupyter/jupyter-js-ui.git && \
    cd jupyter-js-ui && \
    npm install && \
    npm run build
RUN git clone https://github.com/jupyter/jupyter-js-plugins.git && \
    cd jupyter-js-plugins && \
    npm install && \
    npm run build

RUN pip install setuptools pip --upgrade --user && \
    git clone https://github.com/jupyter/notebook && \
    cd notebook && \
    pip install . --user

RUN rm -rf notebook jupyter-js-plugins jupyter-js-notebook jupyter-js-ui

#RUN pip install https://github.com/ipython-contrib/IPython-notebook-extensions/archive/master.zip --user

