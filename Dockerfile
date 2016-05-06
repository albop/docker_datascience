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
