FROM continuumio/miniconda3


RUN conda update -y --all\
    && conda install -y gdal=3.6.2 --force-reinstall

RUN mkdir /app

COPY requirements.txt /app

WORKDIR /app

RUN conda install --file requirements.txt

