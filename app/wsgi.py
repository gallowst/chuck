from html import unescape
import json
from flask import Flask, render_template
from requests import get

app = Flask(__name__)

@app.route("/")
def index():
    """Chuck home page."""
    # Retrieve JSON document
    full = json.loads(get("https://api.chucknorris.io/jokes/random?category=dev").content)
    # Clean up the HTML joke
    unescaped_joke = unescape(full['value'])
    return render_template('chuck.html', joke=unescaped_joke, container=socket.gethostname())

if __name__ == "__main__":
    app.run(debug=False)
