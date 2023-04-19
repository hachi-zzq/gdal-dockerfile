FROM zhuzhengqian123/python3-supervisord:latest









RUN apt-get install -y libgdal-dev



RUN pip install -r requirements.txt
