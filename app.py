from flask import Flask, request

app = Flask(__name__)

@app.route('/')
def return_ip():
    ip_addr = request.remote_addr
    return ip_addr

app.run(port=5000, host='0.0.0.0', debug=True)