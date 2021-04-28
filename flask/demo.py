from flask import Flask, render_template, jsonify, request
from flask_mysqldb import MySQL
app = Flask(__name__, template_folder='static/')

app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'sondre'
app.config['MYSQL_PASSWORD'] = ''
app.config['MYSQL_DB'] = 'webshop'

mysql = MySQL(app)

@app.route('/')
def hello():
    return render_template("index.html")

# get product by ID
@app.route('/api/product/get/<int:id>')
def get(id):
    cur = mysql.connection.cursor()
    cur.execute("SELECT * FROM product WHERE productID = %s", [id])
    myresult = cur.fetchall()
    return jsonify(myresult)

# get all products
@app.route('/api/product/get')
def getAll():
    cur = mysql.connection.cursor()
    cur.execute("SELECT * FROM product")
    myresult = cur.fetchall()
    return jsonify(myresult)

# search products
@app.route('/api/product/search')
def search():
    keyword = str(request.args.get('keyword'))
    cur = mysql.connection.cursor()
    cur.execute("SELECT * FROM product WHERE name = %s", [keyword])
    myresult = cur.fetchall()
    return jsonify(myresult)

if __name__ == "__main__":
    app.run(host ='0.0.0.0', port = 5001, debug = True)
