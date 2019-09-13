from flask import Flask, render_template, Response
import json
from urllib.request import urlopen
import requests
import socket

application = Flask(__name__,)

@application.route("/")
def index():
   """Chuck home page."""
   # Retrieve JSON document
   req = urlopen("http://api.icndb.com/jokes/random?exclude=[explicit]")
   full_json = req.read()
   full = json.loads(full_json.decode('UTF-8'))
   return render_template('chuck.html',joke = full['value']['joke'], container=socket.gethostname())

if __name__ == "__main__":
    application.run()
