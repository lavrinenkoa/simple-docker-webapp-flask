FROM ubuntu
RUN apt-get update 
RUN apt-get -y install python3-pip
RUN pip3 install flask --trusted-host files.pythonhosted.org --trusted-host pypi.org
COPY app.py /opt/
ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0 --port=8080
