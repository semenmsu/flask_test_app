import os

from flask import Flask

app = Flask(__name__)


@app.route("/")
def index():
    return "Hello, World with pre-commit2!"


if __name__ == "__main__":
    app.run()
