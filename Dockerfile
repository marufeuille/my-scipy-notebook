ARG BASE_CONTAINER=jupyter/scipy-notebook
FROM $BASE_CONTAINER

LABEL maintainer="Masahiro Ishii <marufeuille@gmail.com>"

USER root

RUN apt-get update && \
    apt-get install -y --no-install-recommends ffmpeg && \
    rm -rf /var/lib/apt/lists/*

USER $NB_UID

RUN conda install --quiet --yes pydotplus \
    && \
    conda clean --all -f -y
RUN pip install japanize_matplotlib

USER $NB_UID
