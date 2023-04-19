FROM zhuzhengqian123/python3-supervisord:latest









RUN apt-get install -y libgdal-dev

COPY requirements.txt /app

WORKDIR /app

RUN pip install -r requirements.txt
