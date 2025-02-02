from flask import Flask, request, jsonify
from datetime import datetime, timedelta
import json

app = Flask(__name__)

@app.route("/", methods=["GET"])
def get_info():
    response_data = {
        "timestamp": datetime.utcnow().isoformat() + "Z",
        "ip": request.remote_addr
    }
    return app.response_class(
        response=json.dumps(response_data, indent=4),  # Pretty print with 4-space indentation
        status=200,
        mimetype='application/json'
    )

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8080)
