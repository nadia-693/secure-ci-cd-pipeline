from flask import Flask, jsonify

app = Flask(__name__)

@app.route('/')
def home():
    return jsonify({
        "status": "healthy",
        "message": "DevSecOps Pipeline Application Running Successfully",
        "version": "1.0.0"
    })

if __name__ == '__main__':
    # Running securely on localhost default
    app.run(host='0.0.0.0', port=5000)
