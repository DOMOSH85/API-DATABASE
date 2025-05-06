-- Creating database clinic
CREATE DATABASE clinic;

USE clinic;
CREATE TABLE patients (
    patient_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    dob DATE NOT NULL,
    phone VARCHAR(15),
    email VARCHAR(100)
);

-- Inserting values to the patients table
INSERT INTO patients (first_name, last_name, dob, phone, email) VALUES
('John', 'Doe', '1985-01-15', '123-456-7890', 'john.doe@example.com'),
('Jane', 'Smith', '1990-03-22', '234-567-8901', 'jane.smith@example.com'),
('Emily', 'Johnson', '1978-06-30', '345-678-9012', 'emily.johnson@example.com'),
('Michael', 'Brown', '1995-08-10', '456-789-0123', 'michael.brown@example.com'),
('Sarah', 'Davis', '1982-12-01', '567-890-1234', 'sarah.davis@example.com');

-- Creating table doctors
CREATE TABLE doctors (
    doctor_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    specialty VARCHAR(50) NOT NULL,
    phone VARCHAR(15)
);

-- -- Insert data into doctors table
INSERT INTO doctors (first_name, last_name, specialty, phone) VALUES
('Dr. Alice', 'White', 'Cardiology', '678-901-2345'),
('Dr. Bob', 'Green', 'Neurology', '789-012-3456'),
('Dr. Charlie', 'Black', 'Orthopedics', '890-123-4567'),
('Dr. Diana', 'Blue', 'Pediatrics', '901-234-5678'),
('Dr. Eva', 'Red', 'Dermatology', '012-345-6789');

-- Creating table appointments
CREATE TABLE appointments (
    appointment_id INT AUTO_INCREMENT PRIMARY KEY,
    patient_id INT,
    doctor_id INT,
    appointment_date DATETIME NOT NULL,
    status ENUM('scheduled', 'completed', 'canceled') DEFAULT 'scheduled',
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES doctors(doctor_id)
);

-- Insert data into appointments table
INSERT INTO appointments (patient_id, doctor_id, appointment_date, status) VALUES
(1, 1, '2023-05-10 10:00:00', 'scheduled'),
(2, 2, '2023-05-11 11:30:00', 'scheduled'),
(3, 3, '2023-05-12 09:15:00', 'scheduled'),
(4, 4, '2023-05-13 14:45:00', 'completed'),
(5, 5, '2023-05-14 13:30:00', 'canceled');
