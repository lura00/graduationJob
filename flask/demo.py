from flask import Flask, render_template, jsonify
from flask_mysqldb import MySQL
app = Flask(__name__, template_folder='static/')

app.config['MYSQL_HOST'] = 'db'
app.config['MYSQL_USER'] = 'sondre'
app.config['MYSQL_PASSWORD'] = 'pass'
app.config['MYSQL_DB'] = 'webshop'

mysql = MySQL(app)

@app.route('/')
def hello():
    return render_template("index.html")

@app.route('/api/search', methods = ['GET', 'POST'])
def search():
    cur = mysql.connection.cursor()
    cur.execute("SELECT * FROM product")
    myresult = cur.fetchall()
    print(myresult)

if __name__ == "__main__":
    app.run(host ='0.0.0.0', port = 5001, debug = True)
