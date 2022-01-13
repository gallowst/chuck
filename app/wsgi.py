from flask import Flask, render_template, Response
from html import unescape
import json
import requests
import socket

application = Flask(__name__,)

@application.route("/")
def index():
   """Chuck home page."""
   # Retrieve JSON document
   full = json.loads((requests.get("http://api.icndb.com/jokes/random?exclude=[explicit]")).text)
   # Clean up the HTML joke
   unescaped_joke = unescape(full['value']['joke'])
   return render_template('chuck.html',joke = unescaped_joke, container=socket.gethostname())

if __name__ == "__main__":
    application.run()