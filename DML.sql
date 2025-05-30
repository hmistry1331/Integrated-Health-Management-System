--Insert:


-- 1. Add a new patient and their contact
INSERT INTO Patient (Patient_ID, Name, Age, Gender, City, Postal_code, House_no)
VALUES (121, 'Riya Shah', 23, 'F', 'Ahmedabad', 380009, 15);

INSERT INTO Patient_contact_information (Patient_ID, Contact_information)
VALUES (121, '9876566666');

-- 2. Add new appointment and prescription for existing Patient_ID 106
INSERT INTO Appointment (Appointment_ID, Patient_ID, Doctor_ID, AppointmentDate, Status)
VALUES (1006, 106, 2, '2025-04-13', 'Confirmed');

INSERT INTO Prescription (Prescription_ID, Appointment_ID, Medicine_ID, Dosage, Duration_Days, Instructions)
VALUES (506, 1006, 202, '400mg twice a day', 5, 'After meals');

-- 3. Add a new medicine and its side effects
INSERT INTO Medicine (Medicine_ID, Detail_ID, Name, Dosage, Expiry_Date)
VALUES (211, 6, 'Vitamin D3', '1000 IU', '2026-07-01');

INSERT INTO Side_Effects (Medicine_ID, Side_Effects)
VALUES (211, 'Mild nausea, headache');

-- 4. Add a new diet and associate food items
INSERT INTO Diet (Diet_ID, Diet_Type, Nutrition_Details)
VALUES (305, 'Iron-Rich Diet', 'Leafy greens, legumes, tofu, iron supplements');


--Update:


-- 1. Update city and postal code for Patient_ID 103
UPDATE Patient
SET City = 'Gandhinagar', Postal_code = 382010
WHERE Patient_ID = 103;

-- 2. Mark all past pending appointments as completed
UPDATE Appointment
SET Status = 'Completed'
WHERE Status = 'Pending' AND AppointmentDate < CURRENT_DATE;

-- 3. Update sugar level for Patient_ID 102
UPDATE Health_Data
SET Sugar_Level = 99.9
WHERE Patient_ID = 102;




--Delete:
-- 1. Delete a prescription safely
DELETE FROM Prescription
WHERE Prescription_ID = 505;

-- 2. Delete expired medicines
DELETE FROM Medicine
WHERE Expiry_Date < CURRENT_DATE;

-- 3. Delete doctors who have never had appointments
DELETE FROM Doctor
WHERE Doctor_ID NOT IN (SELECT DISTINCT Doctor_ID FROM Appointment);