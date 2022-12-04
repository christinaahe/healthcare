###
# Main application interface
###
from flask import Flask, jsonify
from flaskext.mysql import MySQL

# import the create app function 
# that lives in src/__init__.py
from src import create_app

# create the app object
app = Flask(__name__)

# import the blueprint objects from their respective locations
from src.physicians import physicians
#from manager_api.managers import managers_blueprint

# add db config variables to the app object
app.config['MYSQL_DATABASE_HOST'] = 'db'
app.config['MYSQL_DATABASE_PORT'] = 3306
app.config['MYSQL_DATABASE_USER'] = 'webapp'
app.config['MYSQL_DATABASE_PASSWORD'] = 'abc123'
app.config['MYSQL_DATABASE_DB'] = 'healthcare'

# create the MySQL object and connect it to the
# Flask app object
db_connection = MySQL()
db_connection.init_app(app)

# register the blueprints we created with the current Flask app object.
app.register_blueprint(physicians, url_prefix='/phys')
#app.register_blueprint(managers_blueprint, url_prefix='/mgr')


# --------------------------------------------------------------------
# Create a function named hello world that
# returns a simple html string
# the @app.route("/") connects the hello_world function to
# the URL /
@app.route("/")
def hello_world():
    return f'<h1>Hello From the Flask-MySQL Connection Tutorial</h1>'


@app.route('/db_test')
def db_testing():
    cur = db_connection.get_db().cursor()
    cur.execute('select * from patient')
    row_headers = [x[0] for x in cur.description]
    json_data = []
    theData = cur.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    return jsonify(json_data)


# If this file is being run directly, then run the application
# via the app object.
# debug = True will provide helpful debugging information and
#   allow hot reloading of the source code as you make edits and
#   save the files.


if __name__ == '__main__':
    # we want to run in debug mode (for hot reloading) 
    # this app will be bound to port 4000. 
    # Take a look at the docker-compose.yml to see 
    # what port this might be mapped to... 
    app.run(debug = True, host = '0.0.0.0', port = 4000)
