from flask import Flask, jsonify
app = Flask(__name__)

@app.route('/')
def hello_world():
    return jsonify('hello world')

app.run(host="0.0.0.0", port=port)
