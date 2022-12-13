# Healthcare Database Management System

Our team made a healthcare database management system that facilitates the use of a hospital database for patients, administrators, and physicians. The app features a cohesive way for patients to view their medical records, for physicians to manage their availability and appointments, and for administrators to oversee patient and insurance information, to give a few examples. The majority of the project was written in Python and the code was taken from Professor Mark Fontenot's boilerplate code, and the app itself was deployed using AppSmith.

The below two sections of the READMe were taken from the READMe's of Professor Mark Fontenot's boilerplate code provided to us for this application.

## How to setup and start the containers
**Important** - you need Docker Desktop installed, as we need to run two docker containers to run the application: a MySQL container for obvious reasons, and a Python Flask container to implement a REST API

1. Clone this repository.  
1. Create a file named `db_root_password.txt` in the `secrets/` folder and put inside of it the root password for MySQL. 
1. Create a file named `db_password.txt` in the `secrets/` folder and put inside of it the password you want to use for the `webapp` user. 
1. In a terminal or command prompt, navigate to the folder with the `docker-compose.yml` file.  
1. Build the images with `docker compose build`
1. Start the containers with `docker compose up`.  To run in detached mode, run `docker compose up -d`. 

## For setting up a Conda Web-Dev environment:

1. `conda create -n webdev python=3.9`
1. `conda activate webdev`
1. `pip install flask flask-mysql flask-restful cryptography flask-login`

## Setting up ngrok
1. Install ngrok if not already installed, and place it into the application folder
1. Run ngrok with the local host localhost:8001
1. Copy and paste the ngrok link in the datasource on AppSmith.

It may be the case that you need a couple of different ngrok links from different users, as the free version of ngrok has a limit on how many requests can be possible. We currently have four datasources in use, so using four different ngrok links would be ideal. You could also use the same ngrok link for multiple datasources if that comes to be possible, depending on your ngrok plan.

## The AppSmith app itself
1. Our appsmith app features four pages that allow patients, administrators, and physicians to carry out a variety of functions such as adding appointments, seeing test and patient records, and viewing insurance information. More information on how the app is run can be seen in this video here: https://www.youtube.com/watch?v=FLx5sr63g1I.

## Troubleshooting & FAQ
Please reach out to us with any troubleshooting issues. You could also check on Docker, ngrok, and AppSmith documentation to answers to frequently asked questions.




