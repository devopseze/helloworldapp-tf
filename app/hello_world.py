from flask import request, url_for
from flask_api import FlaskAPI, status, exceptions

app = FlaskAPI(__name__)

@app.route("/", methods=['GET'])
def hello_world():
    """
    List or create notes.
    """
    if request.method == 'GET':
        return "Hello World"

if __name__ == "__main__":
    app.run(host='0.0.0.0', debug=True) ## HOST ADDED TO BIND ALL NETWORK, NOT ONLY LOCALHOST
