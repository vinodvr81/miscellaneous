from flask import Flask

app = Flask(__name__)
#app.config['DEBUG']=True
@app.route("/")
def index():
    return "Hello World of Flask Python!"
    
@app.route("/<string:name>")

def hello(name):
    name = name.capitalize()
    return "Hello, {}!".format(name)
