FROM continuumio/miniconda3


RUN onda update -y --all\
    && conda install -y gdal --force-reinstall


RUN python -c 'from osgeo import gdal; print(dir(gdal))'


