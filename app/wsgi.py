from html import unescape
import json
import socket
import requests
from flask import Flask, render_template #, Response

application = Flask(__name__,)

@application.route("/")
def index():
    """Chuck home page."""
    # Retrieve JSON document
    full = json.loads((requests.get("https://api.chucknorris.io/jokes/random?exclude=explicit")).text)
    # Clean up the HTML joke
    unescaped_joke = unescape(full['value'])
    return render_template('chuck.html',joke = unescaped_joke, container=socket.gethostname())

if __name__ == "__main__":
    application.run()
