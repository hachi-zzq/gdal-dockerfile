FROM zhuzhengqian123/python3-supervisord:latest









RUN apt-get install -y libgdal-dev

COPY requirements.txt /app

WORKDIR /app

RUN pip install GDAL==$(gdal-config --version | awk -F'[.]' '{print $1"."$2}')

RUN pip install -r requirements.txt
