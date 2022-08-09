import os

from flask import Flask

app = Flask(__name__)


@app.route("/")
def index():
    return "Hello, World! Production! v 0.0.5"


if __name__ == "__main__":
    app.run()
