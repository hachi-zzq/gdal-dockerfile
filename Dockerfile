FROM continuumio/miniconda3


RUN conda update -y --all\
    && conda install -y gdal --force-reinstall


RUN python -c 'from osgeo import gdal; print(dir(gdal))'


