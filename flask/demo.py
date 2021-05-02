from flask import Flask, render_template, jsonify, request
from flask_mysqldb import MySQL
app = Flask(__name__, template_folder='static/')

# db config
app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'admin'
app.config['MYSQL_PASSWORD'] = ''
app.config['MYSQL_DB'] = 'webshop'

mysql = MySQL(app)

# index page
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
    order = int(request.args.get('order'))
    cur = mysql.connection.cursor()
    if order == 0:
        cur.execute("SELECT * FROM product ORDER BY price ASC")
    elif order == 1:
        cur.execute("SELECT * FROM product ORDER BY price DESC")
    elif order == 2:
        cur.execute("SELECT * FROM product ORDER BY name ASC")
    myresult = cur.fetchall()
    return jsonify(myresult)

# search products
@app.route('/api/product/search')
def search():
    keyword = "%"+request.args.get('keyword')+"%"
    cur = mysql.connection.cursor()
    cur.execute("SELECT * FROM product WHERE name LIKE %s", [keyword])
    myresult = cur.fetchall()
    return jsonify(myresult)

if __name__ == "__main__":
    app.run(host ='0.0.0.0', port = 5001, debug = True)
