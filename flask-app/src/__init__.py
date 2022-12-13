# Some set up for the application

from flask import Flask
from flaskext.mysql import MySQL

# create a MySQL object that we will use in other parts of the API
db = MySQL()


def create_app():
    app = Flask(__name__)
    #app.logger.info("test")
    # secret key that will be used for securely signing the session
    # cookie and can be used for any other security related needs by
    # extensions or your application
    app.config['SECRET_KEY'] = 'someCrazyS3cR3T!Key.!'

    # these are for the DB object to be able to connect to MySQL.
    app.config['MYSQL_DATABASE_USER'] = 'webapp'
    app.config['MYSQL_DATABASE_PASSWORD'] = open('/secrets/db_password.txt').readline()
    app.config['MYSQL_DATABASE_HOST'] = 'db'
    app.config['MYSQL_DATABASE_PORT'] = 3306
    app.config['MYSQL_DATABASE_DB'] = 'healthcare'  # Change this to your DB name

    db.init_app(app)

    # Import the various routes
    from src.views import views
    from src.physicians.physicians import physicians
    from src.patients.patients import patients
    from src.administrator.administrator import administrator

    # Register the routes that we just imported so they can be properly handled
    # app.register_blueprint(views, url_prefix='/classic')
    app.register_blueprint(physicians, url_prefix='/phys')
    app.register_blueprint(patients, url_prefix='/pat')
    app.register_blueprint(administrator, url_prefix='/admin')

    #app.logger.info("hello")
    #app.logger.info(app.url_map)

    return app
