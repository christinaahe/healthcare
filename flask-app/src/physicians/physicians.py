from flask import Blueprint, request, jsonify, make_response, current_app
from flaskext.mysql import MySQL
import json

from src import db

physicians = Blueprint('physicians', __name__)

# posts new availability
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


# gets all current availabilities
@physicians.route('/availabilities', methods=['GET'])
def get_availabilities():
    cursor = db.get_db().cursor()
    cursor.execute('select * from availability')
    column_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(column_headers, row)))

    return jsonify(json_data)


# gets all physician IDs
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

