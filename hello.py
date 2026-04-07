from flask import Flask, jsonify, request

app = Flask(__name__)


def add(x, y):
    """This is an add function"""
    return x + y


@app.route("/")
def home():
    return jsonify({"message": "API is running 2.0"})


@app.route("/health")
def health():
    return {"status": "ok"}, 200


@app.route("/add", methods=["GET"])
def add_route():
    try:
        x = float(request.args.get("x"))
        y = float(request.args.get("y"))
        result = add(x, y)
        return jsonify({"result": result})
    except (ValueError, TypeError) as e:
        return jsonify({"error": str(e)}), 400


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8080)
