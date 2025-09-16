from flask import Flask

app = Flask(__name__)

@app.route('/')
def home():
    return "Hello from Flask! ooh hello hello mate mate This is a flask something docker something as long as it is working it is fine"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
