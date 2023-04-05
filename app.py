from flask import Flask

app = Flask(__name__)


@app.route('/')
def hello():
    return "Hello World! version2"

@app.route('/health')
def health():
    return "<h1><center>Liveness check completed</center><h1>",200


@app.route('/ready')
def ready():
  return "<h1><center>Readiness check completed</center><h1>",200


if __name__ == '__main__':
    app.run(host='0.0.0.0', debug=True)

