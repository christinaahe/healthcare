from flask import Blueprint, request, jsonify, make_response, current_app
import json
from src import db

administrator = Blueprint('administrator', __name__)

# Get all insurance info from the DB
@administrator.route('/insurance', methods=['GET'])
def get_insurance():
    cursor = db.get_db().cursor()
    cursor.execute('select * from insurance')
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response

# Get all claim info from the DB
@administrator.route('/claim', methods=['GET'])
def get_all_claims():
    cursor = db.get_db().cursor()
    cursor.execute('select * from claim')
    row_headers = [x[0] for x in cursor.description]
    json_data = []
    theData = cursor.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    the_response = make_response(jsonify(json_data))
    the_response.status_code = 200
    the_response.mimetype = 'application/json'
    return the_response


# Adding a new claim
@administrator.route('/addClaim', methods=['POST'])
def add_claim():
    current_app.logger.info(request.form)
    cursor = db.get_db().cursor()
    claimID = request.form['claimID']
    insuranceID = request.form['insuranceID']
    approvalStatus = request.form['approvalStatus']
    totalCost = request.form['totalCost']
    query = f'INSERT INTO claim (insuranceID, claimID, totalCost, approvalStatus) VALUES(\"{insuranceID}\",\"{claimID}\",\"{totalCost}\",\"{approvalStatus}\")'
    cursor.execute(query)
    db.get_db().commit()
    return "Successfully added new claim!"

