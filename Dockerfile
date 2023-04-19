FROM continuumio/miniconda3

RUN conda update -y --all\
    && conda install -y gdal=3.6.2 --force-reinstall





