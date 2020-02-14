# Chuck Norris - Flask Sample Application

[![Build Status](https://dev.azure.com/gallowst/chuck/_apis/build/status/Chuck?branchName=master)](https://dev.azure.com/gallowst/chuck/_build/latest?definitionId=10&branchName=master)

This repository provides a sample Python web application implemented using the Flask web framework and hosted using ``gunicorn``. It is intended to be used to demonstrate deployment of Python web applications to Docker.

## Implementation Notes

This sample Python application relies on the support provided by the default S2I builder for deploying a WSGI application using the ``gunicorn`` WSGI server. The requirements which need to be satisfied for this to work are:

* The WSGI application code file needs to be named ``wsgi.py``.
* The WSGI application entry point within the code file needs to be named ``application``.
* The ``gunicorn`` package must be listed in the ``requirements.txt`` file for ``pip``.

In addition, the ``.s2i/environment`` file has been created to allow environment variables to be set to override the behaviour of the default S2I builder for Python.

* The environment variable ``APP_CONFIG`` has been set to declare the name of the config file for ``gunicorn``.

## Deployment Steps

From Docker for Windows / WSL / Linux Docker Host run the following:

~~~bash
# Build it
docker build -t flask-demo:latest .
# Run it
docker run --rm -p 8080:80 flask-demo:latest
~~~

Access the web page via `http` on port 8080 - [linky](http://localhost:8080)
