from flask import Flask, render_template, Response
import json
import requests
import socket


application = Flask(__name__,)

@application.route("/")
def index():
   """Chuck home page."""
   # Retrieve JSON document
   full = json.loads((requests.get("http://api.icndb.com/jokes/random?exclude=[explicit]")).text)
   return render_template('chuck.html',joke = full['value']['joke'], container=socket.gethostname())

if __name__ == "__main__":
    application.run()
