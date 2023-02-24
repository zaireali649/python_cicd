from flask import Flask

app = Flask(__name__)

@app.route("/")
def web_server():
    html = '''
    <h1>Flask Hosted Website</h1>
    <p>This is a CICD example of running a pipeline using Python. Please like and subscribe!</p>
    <h2>https://github.com/zaireali649/python_cicd</h2>
    '''
    
    return html

