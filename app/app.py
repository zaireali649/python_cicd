from flask import Flask

app = Flask(__name__)

@app.route("/")
def hello_world():
    html = ''
    html += '<h1>Changed and Updated</h1>\n'
    html += "<p>Hello, World!</p>"
    return html