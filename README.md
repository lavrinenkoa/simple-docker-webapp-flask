# Simple Web Application

This is a simple web application using [Python Flask](http://flask.pocoo.org/). 
This is used in the demonstration.
  
  Below are the steps required to get this working on a base linux system.
  
  - Install all required dependencies
  - Install and Configure Web Server
  - Start Web Server

## 0. Build image, run and test

    docker build . -f Dockerfile
    docker images
    docker run --name flask -p 8080:8080 32af3886755b

  Open a browser and go to URL
  
  http://127.0.0.1:8080/
  
  http://172.17.0.2:8080/
  

## 1. Install all required dependencies
  
  Python and its dependencies

    apt-get install -y python python-setuptools python-dev build-essential python-pip python-mysqldb

   
## 2. Install and Configure Web Server

Install Python Flask dependency

    pip install flask
    pip install flask-mysql

- Copy app.py or download it from source repository
- Configure database credentials and parameters 

## 3. Start Web Server

Start web server

    FLASK_APP=app.py flask run --host=0.0.0.0
    
## 4. Test

Open a browser and go to URL

    http://<IP>:5000                            => Welcome
    http://<IP>:5000/how%20are%20you            => I am good, how about you?
