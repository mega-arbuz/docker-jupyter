FROM jupyter/base-notebook
RUN conda install --quiet --yes \
    'numpy' \
    'jupyter_contrib_nbextensions'

RUN jupyter nbextension enable execute_time/ExecuteTime
RUN jupyter nbextension enable collapsible_headings/main
RUN jupyter nbextension enable scratchpad/main

#http://127.0.0.1:8888/?token=12345abcd

ENV JUPYTER_TOKEN='12345abcd'
