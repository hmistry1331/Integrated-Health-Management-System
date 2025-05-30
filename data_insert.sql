-- Data Insert in table name Doctors
INSERT INTO Doctor (Doctor_ID, Name, Specialty, Contact_Information, Experience) VALUES
(1, 'Dr. Asha Mehta', 'General Physician', '9876500011', 10),
(2, 'Dr. Rakesh Patel', 'Cardiologist', '9876500022', 12),
(3, 'Dr. Neha Shah', 'Dietician', '9876500033', 8),
(4, 'Dr. Sanjay Desai', 'ENT Specialist', '9876500044', 15),
(5, 'Dr. Doctor5', 'Dermatologist', '9876595782', 23),
(6, 'Dr. Doctor6', 'General Physician', NULL, 17),
(7, 'Dr. Doctor7', 'Neurologist', '9876539891', 6);

-- Data Insert in table name Patients
INSERT INTO Patient (Patient_ID, Name, Age, Gender, City, Postal_code, House_no) VALUES
(101, 'Patel Gaurav', 21, 'M', 'Ahmedabad', 380001, 12),
(102, 'Nihar Nadiya', 22, 'M', 'Surat', 395007, 88),
(103, 'Dev Makwana', 21, 'M', 'Vadodara', 390002, 45),
(104, 'Harsh Mistri', 22, 'M', 'Rajkot', 360001, 23),
(105, 'Meena Joshi', 24, 'F', 'Gandhinagar', 382010, 7),
(106, 'Patient 106', 34, 'F', 'Rajkot', 389204, 38),
(107, 'Patient 107', 49, 'M', NULL, 385001, 94),
(108, 'Patient 108', 28, 'M', 'Gandhinagar', 386422, 82),
(109, 'Patient 109', 65, 'F', 'Surat', 384701, 26),
(110, 'Patient 110', 53, 'M', NULL, 386105, 45);

-- Data Insert in table name Medicines
INSERT INTO Medicine (Medicine_ID, Detail_ID, Name, Dosage, Expiry_Date) VALUES
(201, 1, 'Paracetamol', '500mg', '2026-01-01'),
(202, 2, 'Ibuprofen', '400mg', '2025-12-31'),
(203, 3, 'Antacid', '10ml', '2026-05-01'),
(204, 4, 'ORS', '200ml', '2025-11-15'),
(205, 5, 'Cough Syrup', '5ml', '2025-10-10'),
(206, 206, 'Vitamin D', '10ml', '2026-06-14'),
(207, 207, 'Amoxicillin', '250mg', '2025-11-17'),
(208, 208, 'Aspirin', NULL, '2026-08-24'),
(209, 209, 'Cetirizine', '500mg', '2026-10-13'),
(210, 210, 'Metformin', '250mg', NULL);

-- Data Insert in table name Appointments
INSERT INTO Appointment (Appointment_ID, Patient_ID, Doctor_ID, AppointmentDate, Status) VALUES
(301, 101, 1, '2025-04-10', 'Completed'),
(302, 102, 2, '2025-04-10', 'Pending'),
(303, 103, 3, '2025-04-11', 'Completed'),
(304, 104, 4, '2025-04-12', 'Completed'),
(305, 105, 1, '2025-04-10', 'Completed'),
(306, 106, 2, '2025-04-13', 'Pending'),
(307, 107, 3, '2025-04-13', 'Completed'),
(308, 108, 4, '2025-04-14', 'Completed'),
(309, 109, 1, '2025-04-10', 'Completed'),
(310, 110, 2, '2025-04-15', 'Pending');

-- Data Insert in table name Prescriptions


-- Data Insert in table name Side Effects
INSERT INTO Side_Effects (Medicine_ID, Side_Effects) VALUES
(201, 'Drowsiness, Nausea'),
(202, 'Headache, Drowsiness'),
(203, 'Constipation'),
(204, 'None'),
(205, 'Drowsiness'),
(206, 'Fatigue'),
(207, 'Diarrhea'),
(208, 'Drowsiness, Rash'),
(209, 'Sleepiness'),
(210, 'None');

-- Data Insert in table name Health Data
INSERT INTO Health_Data (Data_ID, Patient_ID, Blood_Pressure, Heart_Rate, Sugar_Level, Other_Health_Metrics) VALUES
(501, 101, '120/80', 80, 90.5, 'N/A'),
(502, 102, '130/85', 85, 95.2, 'N/A'),
(503, 103, '140/90', 90, 98.0, 'N/A'),
(504, 104, '115/75', 75, 89.0, 'N/A'),
(505, 105, '135/88', 95, 110.5, 'N/A'),
(506, 106, '145/95', 88, 112.3, 'N/A'),
(507, 107, '138/89', 100, 99.1, 'N/A'),
(508, 108, '125/85', 92, 88.8, 'N/A'),
(509, 109, '122/82', 84, 93.4, 'N/A'),
(510, 110, '130/87', 89, 94.2, 'N/A');

-- Data Insert in table name Diets
INSERT INTO Diet (Diet_ID, Diet_Type, Nutrition_Details) VALUES
(601, 'Low Carb', 'Less carbs, more protein'),
(602, 'Diabetic Friendly', 'Low sugar meals'),
(603, 'Heart Healthy', 'Low sodium and cholesterol');

-- Data Insert in table name Food Items
INSERT INTO Food_Items (DIET_ID, Name) VALUES
(701, 'Oats'),
(702, 'Brown Rice'),
(703, 'Grilled Chicken'),
(704, 'Spinach'),
(705, 'Fruits');

-- Data Insert in table name Diet-Food
INSERT INTO Diet_Food (Diet_ID, Food_ID) VALUES
(601, 701),
(601, 703),
(602, 702),
(602, 705),
(603, 704),
(603, 703);

-- Data Insert in table name Health Records
INSERT INTO Health_Records (Patient_ID, Doctor_ID, Previous_Diagnosis, Treatment_Received, Allergies, DietID) VALUES
(101, 1, 301, 'Cold', 'Paracetamol', 'None', 601),
(102, 2, 302, 'Chest Pain', 'Ibuprofen', 'Dust', 601),
(103, 3, 303, 'Acidity', 'Antacid', 'Peanuts', 602),
(104, 4, 304, 'Cough', 'ORS', 'None', 602),
(105, 1, 305, 'Fever', 'Cough Syrup', 'Pollen', 601),
(106, 2, 306, 'Weakness', 'Vitamin D', 'None', 603),
(107, 3, 307, 'Infection', 'Amoxicillin', 'Penicillin', 603);
