Simple CRUD API Using MySQL and FastAPI
Project Title
MySQL CRUD API with FastAPI

Description
This project implements a simple CRUD (Create, Read, Update, Delete) API using FastAPI, connected to a MySQL database. The API allows users to manage data related to a clinic, including patients, doctors, and appointments. It provides endpoints to perform all CRUD operations, making it easy to interact with the underlying database.

Features
Create new records for patients, doctors, and appointments
Retrieve records from the database
Update existing records
Delete records from the database
Technologies Used
Python
FastAPI
MySQL
SQLAlchemy (for database interaction)
Getting Started
Prerequisites
Python 3.x
MySQL server installed
pip (Python package installer)
Installation
Clone the Repository

bash

Copy
git clone https://github.com/DOMOSH85/API-DATABASE.git
cd mysql-crud-api
Create a Virtual Environment (Optional but recommended)

bash

Copy
python -m venv venv
source venv/bin/activate  # On Windows use `venv\Scripts\activate`
Install Required Packages

bash

Copy
pip install -r requirements.txt
Set Up the MySQL Database

Create a new database in MySQL:
sql

Copy
CREATE DATABASE clinic;
Import the SQL schema and sample data:
bash

Copy
mysql -u yourusername -p clinic < schema.sql
Running the Project
Start the FastAPI Server

bash

Copy
uvicorn main:app --reload
Access the API


Patients

POST /patients - Create a new patient
GET /patients - Retrieve all patients
GET /patients/{id} - Retrieve a specific patient by ID
PUT /patients/{id} - Update a specific patient by ID
DELETE /patients/{id} - Delete a specific patient by ID
Doctors

POST /doctors - Create a new doctor
GET /doctors - Retrieve all doctors
GET /doctors/{id} - Retrieve a specific doctor by ID
PUT /doctors/{id} - Update a specific doctor by ID
DELETE /doctors/{id} - Delete a specific doctor by ID
Appointments

POST /appointments - Create a new appointment
GET /appointments - Retrieve all appointments
GET /appointments/{id} - Retrieve a specific appointment by ID
PUT /appointments/{id} - Update a specific appointment by ID
DELETE /appointments/{id} - Delete a specific appointment by ID
Conclusion
This project demonstrates how to build a simple CRUD API using FastAPI and MySQL. It provides a foundation for future enhancements, such as adding authentication, input validation, and error handling.

Feel free to contribute or modify the project as needed!
