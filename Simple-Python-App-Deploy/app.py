from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello():
    return 'Hello, This is a sample flask service to practice  ci/cd'

if __name__ == '__main__':
    app.run()
