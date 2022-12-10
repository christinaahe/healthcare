from flask import Blueprint, request, jsonify, make_response, current_app
from flaskext.mysql import MySQL
import json

from src import db

patients = Blueprint('patients', __name__)

#  Get all the patient record
@patients.route('/record/<patientID>', methods=['GET'])
def get_records(patientID):
    # get a cursor object from the database
    cursor = db.get_db().cursor()

    # use cursor to query the database for a list of products
    cursor.execute('select * from record where patientID = {0}'.format(patientID))

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

#  Get all the patient information
@patients.route('/patientinfo/<patientID>', methods=['GET'])
def get_patient_info(patientID):
    # get a cursor object from the database
    cursor = db.get_db().cursor()

    # use cursor to query the database for a list of products
    cursor.execute('select * from patient where patientID = {0}'.format(patientID))

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

#  Get all the patient condition from the database
@patients.route('/condition/<patientID>', methods=['GET'])
def get_condition(patientID):
    # get a cursor object from the database
    cursor = db.get_db().cursor()

    # use cursor to query the database for a list of products
    cursor.execute('select * from patient_condition where patientID = {0}'.format(patientID))

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

#  Get all the patient test results from the database
@patients.route('/tests/<patientID>', methods=['GET'])
def get_tests(patientID):
    # get a cursor object from the database
    cursor = db.get_db().cursor()

    # use cursor to query the database for a list of products
    cursor.execute('select * from test where patientID = {0}'.format(patientID))

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

@patients.route('/appointment/<patientID>', methods=['GET'])
def get_appointments_patient(patientID):
    cursor = db.get_db().cursor()
    cursor.execute('select * from appointment where patientID = {0}'.format(patientID))
    column_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(column_headers, row)))

    return jsonify(json_data)

@patients.route('/availability/<physicianID>', methods=['GET'])
def get_availabilities_physician(physicianID):
    cursor = db.get_db().cursor()
    cursor.execute('select * from availability where physicianID = {0}'.format(physicianID))
    column_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(column_headers, row)))

    return jsonify(json_data)

# gets a list of patientIDS
@patients.route('/patientID', methods=['GET'])
def get_patientID():
    cursor = db.get_db().cursor()
    cursor.execute('select patientID from patient')
    column_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(column_headers, row)))

    return jsonify(json_data)


@patients.route('/availability', methods=['GET'])
def get_availabilities():
    cursor = db.get_db().cursor()
    cursor.execute('select * from availability')
    column_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(column_headers, row)))

    return jsonify(json_data)

@patients.route('/appointment', methods=['GET'])
def get_appointments():
    cursor = db.get_db().cursor()
    cursor.execute('select * from appointment')
    column_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(column_headers, row)))

    return jsonify(json_data)

@patients.route('/editappointment', methods=['POST'])
def add_appointment():
    current_app.logger.info(request.form)
    cursor = db.get_db().cursor()
    patientID = request.form['patientID']
    physicianID = request.form['physicianID']
    appointmentDate = request.form['appointmentDate']
    roomlocation = request.form['roomlocation']
    appointmentType = request.form['appointmentType']
    appointmentID = request.form['appointmentID']
    query = f'INSERT INTO appointment(patientID, physicianID, appointmentDate, appointmentID, appointmentType, roomlocation) VALUES(\"{patientID}\", \"{physicianID}\", \"{appointmentDate}\", \"{appointmentID}\", \"{appointmentType}\", \"{roomlocation}\")'
    cursor.execute(query)
    db.get_db().commit()
    return "Successfully added appointment!"
