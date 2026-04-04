from flask import Flask
app = Flask(__name__) # תיקון: __name__ במקום _name_

@app.route('/')
def home():
    return "Hello, Jenkins + Docker + ECR!1"

if __name__ == "__main__": # תיקון: __name__ ו-"__main__"
    app.run(host="0.0.0.0", port=5000)
