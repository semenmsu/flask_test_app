import os

from flask import Flask

app = Flask(__name__)


@app.route("/")
def index():
    return "Hello, World with pre-commit3!"


if __name__ == "__main__":
    app.run()
