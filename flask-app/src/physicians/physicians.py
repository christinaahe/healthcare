from flask import Blueprint, request, jsonify, make_response, current_app
from flaskext.mysql import MySQL
import json

#from src import db
db = MySQL()

physicians = Blueprint('physicians', __name__)

# Get all the patients from the database
@physicians.route('/patients', methods=['GET'])
def get_patients():
    # get a cursor object from the database
    cursor = db.get_db().cursor()

    # use cursor to query the database for a list of products
    cursor.execute('select * from patients')

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

    return jsonify(json_data)

# get the top 5 products from the database
@physicians.route('/physician', methods=['GET'])
def get_physician():
    cursor = db.get_db().cursor()
    cursor.execute('select * from physician')
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

    return jsonify(json_data)

@physicians.route('/appointment', methods=['GET'])
def get_appointments():
    cursor = db.get_db().cursor()
    cursor.execute('select * from appointment')
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

    return jsonify(json_data)

@physicians.route('/editavailability', methods=['POST'])
def add_availability():
    current_app.logger.info(request.form)
    cursor = db.get_db().cursor()
    physicianID = request.form['physicianID']
    availableDate = request.form['availableDate']
    location = request.form['location']
    availabilityID = request.form['availabilityID']
    query = f'INSERT INTO availability(physicianID, availableDate, location, availabilityID) VALUES(\"{physicianID}\",\"{availableDate}\",\"{location}\",\"{availabilityID}\")'
    cursor.execute(query)
    db.get_db().commit()
    return "Successfully added availability!"
