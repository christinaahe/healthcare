from flask import Blueprint, request, jsonify, make_response, current_app
from flaskext.mysql import MySQL
import json

from src import db

physicians = Blueprint('physicians', __name__)

# Get all the patients from the database
@physicians.route('/patients', methods=['GET'])
def get_patients():
    # get a cursor object from the database
    cursor = db.get_db().cursor()
    #current_app.logger.info("Hello")
    #current_app.logger.info(current_app.url_map)
    # use cursor to query the database for a list of products
    cursor.execute('select * from patient')

    # grab the column headers from the returned data
    column_headers = [x[0] for x in cursor.description]

    # create an empty dictionary object to use in 
    # putting column headers together with data
    json_data = []

    # fetch all the data from the cursor
    theData = cursor.fetchall()

    # for each of the rows, zip the data elements together with
    # the column headers. 
    for row in theData:
        json_data.append(dict(zip(column_headers, row)))
    
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response

@physicians.route('/appointment/<physicianID>', methods=['GET'])
def get_appointments(physicianID):
    cursor = db.get_db().cursor()
    cursor.execute('select * from appointment where physicianID = {0}'.format(physicianID))
    column_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(column_headers, row)))

    return jsonify(json_data)

@physicians.route('/editavailability', methods=['POST'])
def add_availability():
    current_app.logger.info(request.form)
    cursor = db.get_db().cursor()
    physicianID = request.form['physicianID']
    availableDate = request.form['availableDate']
    roomlocation = request.form['roomlocation']
    availabilityID = request.form['availabilityID']
    query = f'INSERT INTO availability(physicianID, availableDate, rmlocation, availabilityID) VALUES(\"{physicianID}\", \"{availableDate}\", \"{roomlocation}\", \"{availabilityID}\")'
    cursor.execute(query)
    db.get_db().commit()
    return "Successfully added availability!"


# Get customer detail for customer with particular userID
@physicians.route('/<physicianID>', methods=['GET'])
def get_customer(physicianID):
    cursor = db.get_db().cursor()
    cursor.execute('select * from physician where physicianID = {0}'.format(physicianID))
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response

# gets 
@physicians.route('/physicianID', methods=['GET'])
def get_physicianID():
    cursor = db.get_db().cursor()
    query = 'select physicianID as value, physicianID as label from physician'
    cursor.execute(query)
    column_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(column_headers, row)))

    return jsonify(json_data)

