apt update
apt install python3-pip
pip install flask

echo "########################################"
echo ""
echo "If you are using vpsfree's free service"
echo "select 1 else select 0"
echo ""
echo "########################################"
echo ""
echo "* 0) Ipv4 (0.0.0.0)"
echo "* 1) Ipv6 (::)"

read -p "> " ip


case $ip in

    0)
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

    echo "Now just run 'python3 website/main.py'";;
    1)
    mkdir website && cd website
    echo "from flask import Flask, render_template
app = Flask(__name__)

@app.route('/')
def hello_world():
    return render_template('index.html')

if __name__ == '__main__':
    app.run('::',80) # <----- ip & port" > main.py

    mkdir templates/
    touch templates/index.html
    echo "Hello World!  -  it seems to be woking!!!" > templates/index.html

    echo "Now just run 'python3 website/main.py'";;
    
esac
