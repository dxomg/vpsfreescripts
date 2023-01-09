apt update
apt install python3-pip
pip install flask
mkdir website && cd website

echo "from flask import Flask, render_template
app = Flask(__name__)

@app.route('/')
def hello_world():
    return render_template('index.html')

if __name__ == '__main__':
    app.run('0.0.0.0',80) # <----- ip & port" > main.py

mkdir templates/
touch templates/index.html
echo "Hello World!  -  it seems to be woking!!!" > templates/index.html

echo "Now just run 'python3 website/main.py'"