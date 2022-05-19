from flask import Flask, jsonify
import os


app = Flask(__name__)

@app.route('/')
def hello_world():
    return jsonify('hello world')

prot = os.environ.get("PORT", 5000)
app.run(debug=False, host="0.0.0.0", port=port)
