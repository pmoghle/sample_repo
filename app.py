from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello():
	return "welcome to the flask tutorials"


if _name_ == "__main__":
	app.run(host ='0.0.0.0', port = 5001, debug = True)
