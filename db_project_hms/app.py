from flask import Flask, request, render_template, redirect, url_for, session,flash,jsonify
from flask_mysqldb import MySQL
from datetime import datetime

app = Flask(__name__)
app.secret_key = '123434453'
app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = 'password'
app.config['MYSQL_DB'] = 'hms'  # Use your actual database URI here
mysql = MySQL(app)

@app.route('/')
@app.route('/login', methods=['GET', 'POST'])
def login():
    if request.method == 'POST':
        staff_id = request.form['staff_id']
        password = request.form['password']

        cur = mysql.connection.cursor()
        cur.execute("SELECT password FROM staff WHERE staff_id = %s", [staff_id])
        user = cur.fetchone()
        cur.close()

        if user and user[0]==password:
            session['loggedin'] = True
            session['staff_id'] = staff_id
            return render_template('patient.html')
        else:
            flash('login wrong', category='danger')
    return render_template('login.html')
    
@app.route('/patient', methods=['GET', 'POST'])
def patient():
    return render_template('patient.html')

@app.route('/bed', methods=['GET', 'POST'])
def bed():
    return render_template('bed.html')

@app.route('/employer', methods=['GET', 'POST'])
def employer():
    cur = mysql.connection.cursor()
    cur.execute("SELECT ward_name FROM wards")
    ward_names = cur.fetchall()
    return render_template('employer.html', ward_names=ward_names)

@app.route('/logout')
def logout():
    # Implement your logout logic here
    return redirect(url_for('login'))  # Redirect to the login page after logout

@app.route('/add_patient', methods=['POST'])
def add_patient():
    # Get patient details from the form
    first_name = request.form.get('first_name')
    last_name = request.form.get('last_name')
    date_of_birth = request.form.get('date_of_birth')
    gender = request.form.get('gender')
    contact_info = request.form.get('contact_info')
    address = request.form.get('address')
    medical_history = request.form.get('medical_history')
    emergency_contact_name = request.form.get('emergency_contact_name')
    emergency_contact_phone  = request.form.get('emergency_contact_phone ')
    # Add the patient to the database
    cur = mysql.connection.cursor()
    cur.execute("INSERT INTO patients(first_name, last_name, date_of_birth, gender, contact_info, address, medical_history, emergency_contact_name,emergency_contact_phone) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s)", (first_name, last_name, date_of_birth, gender, contact_info, address, medical_history, emergency_contact_name,emergency_contact_phone))
    mysql.connection.commit()
    cur.close()

    # Redirect back to the patient management page
    return redirect(url_for('patient'))

@app.route('/edit_patient', methods=['POST'])
def edit_patient():
    # Get patient details from the form
    patient_id = request.form.get('patient_id')
    first_name = request.form.get('first_name')
    last_name = request.form.get('last_name')
    date_of_birth = request.form.get('date_of_birth')
    gender = request.form.get('gender')
    contact_info = request.form.get('contact_info')
    address = request.form.get('address')
    medical_history = request.form.get('medical_history')
    emergency_contact_name = request.form.get('emergency_contact_name')
    emergency_contact_phone  = request.form.get('emergency_contact_phone ')
    # Edit the patient in the database
    cur = mysql.connection.cursor()
    cur.execute("UPDATE patients SET first_name=%s, last_name=%s, gender=%s, contact_info=%s, address=%s, medical_history=%s, emergency_contact_name=%s,emergency_contact_phone=%s WHERE patient_id=%s", (first_name, last_name, gender, contact_info, address, medical_history, emergency_contact_name,emergency_contact_phone, patient_id))
    mysql.connection.commit()
    cur.close()

    # Return a success message or updated data
    response_data = {'message': 'Patient updated successfully'}
    return jsonify(response_data)

@app.route('/delete_patient', methods=['POST'])
def delete_patient():
    # Get patient id from the form
    patient_id = request.form.get('patient_id')

    # Delete the patient from the database
    cur = mysql.connection.cursor()
    cur.execute("DELETE FROM admissions WHERE patient_id=%s", [patient_id])
    cur.execute("DELETE FROM patients WHERE patient_id=%s", [patient_id])
    mysql.connection.commit()
    cur.close()

    # Redirect back to the patient management page
    return redirect(url_for('patient'))


@app.route('/patients_data', methods=['GET'])
def get_patients():
    cur = mysql.connection.cursor()
    cur.execute("SELECT * FROM patients")  # This line is important
    patients = cur.fetchall()
    

    # Convert the tuple data to a list of dictionaries for JSON serialization
    patients_list = [dict(zip([key[0] for key in cur.description], row)) for row in patients]
    cur.close()
    return jsonify(patients_list)
@app.route('/staff_data', methods=['GET'])
def get_sraff():
    cur = mysql.connection.cursor()
    cur.execute("SELECT * FROM staff")  # This line is important
    staff = cur.fetchall()
    

    # Convert the tuple data to a list of dictionaries for JSON serialization
    staff_list = [dict(zip([key[0] for key in cur.description], row)) for row in staff]
    cur.close()
    return jsonify(staff_list)

@app.route('/edit_staff', methods=['POST'])
def edit_staff():
    # Get staff details from the form
    staff_id = request.form.get('staff_id')
    first_name = request.form.get('first_name')
    last_name = request.form.get('last_name')
    role = request.form.get('role')
    department = request.form.get('department')
    contact_info = request.form.get('contact_info')
    qualifications = request.form.get('qualifications')
    shift_schedule = request.form.get('shift_schedule')

    print(role)
    # Edit the staff in the database
    cur = mysql.connection.cursor()
    cur.execute("UPDATE staff SET first_name=%s, last_name=%s, role=%s, department=%s, contact_info=%s, qualifications=%s, shift_schedule=%s WHERE staff_id=%s", (first_name, last_name, role, department, contact_info, qualifications, shift_schedule, staff_id))
    mysql.connection.commit()
    cur.close()

    # Return a success message or updated data
    response_data = {'message': 'Staff updated successfully'}
    return jsonify(response_data)

@app.route('/add_staff', methods=['POST'])
def add_staff():
    # Get staff details from the form
    first_name = request.form.get('first_name')
    last_name = request.form.get('last_name')
    role = request.form.get('role')
    department = request.form.get('department')
    contact_info = request.form.get('contact_info')
    qualifications = request.form.get('qualifications')
    shift_schedule = request.form.get('shift_schedule')

    # Add the new staff to the database
    cur = mysql.connection.cursor()
    cur.execute("INSERT INTO staff (first_name, last_name, role, department, contact_info, qualifications, shift_schedule) VALUES (%s, %s, %s, %s, %s, %s, %s)", (first_name, last_name, role, department, contact_info, qualifications, shift_schedule))
    mysql.connection.commit()
    cur.close()

    # Return a success message or updated data
    response_data = {'message': 'Staff added successfully'}
    return jsonify(response_data)

@app.route('/bed_data', methods=['GET'])
def get_bed():
    cur = mysql.connection.cursor()
    cur.execute("""
        SELECT admissions.*, beds.status, patients.first_name, patients.last_name 
        FROM admissions 
        LEFT JOIN beds ON admissions.bed_id = beds.bed_id
        LEFT JOIN patients ON admissions.patient_id = patients.patient_id
    """)
    staff = cur.fetchall()
    

    # Convert the tuple data to a list of dictionaries for JSON serialization
    bed_list = [dict(zip([key[0] for key in cur.description], row)) for row in staff]
    cur.close()
    return jsonify(bed_list)

@app.route('/admission', methods=['POST'])
def admission():
    bed_id = request.form.get('bed_id')
    admission_date = datetime.now()
    treatment_plan = request.form.get('treatment_plan')
    attending_doctor_id = request.form.get('attending_doctor_id')
    diagnosis = request.form.get('diagnosis')

    # Update the bed in the database to be occupied
    cur = mysql.connection.cursor()
    cur.execute("""UPDATE beds SET status = 'Occupied' WHERE bed_id = %s""", [bed_id])
    cur.execute("""
        UPDATE admissions 
        SET admission_date = %s, treatment_plan = %s, attending_doctor_id = %s, diagnosis = %s ,patient_id = %s
        WHERE bed_id = %s
    """, [admission_date, treatment_plan, attending_doctor_id, diagnosis, bed_id, bed_id])
    mysql.connection.commit()
    cur.close()

    return redirect(url_for('bed'))

@app.route('/discharge_patient', methods=['POST'])
def discharge_patient():
    bed_id = request.form.get('bed_id')

    # Update the bed in the database to be empty
    cur = mysql.connection.cursor()
    cur.execute("""
        UPDATE beds
        SET status = 'Available'
        WHERE bed_id = %s
    """, [bed_id])
    cur.execute("""
        UPDATE admissions
        SET admission_date = NULL,treatment_plan = NULL,attending_doctor_id = NULL,diagnosis=NULL,patient_id=NULL
        WHERE bed_id = %s
    """, [bed_id])
    print(bed_id)
    mysql.connection.commit()
    cur.close()

    return redirect(url_for('bed'))

if __name__ == '__main__':
    app.run(debug=True, port=5000)