--1 List all patients with their appointments:
SELECT P.Name, A.AppointmentDate, A.Status
FROM Patient P
JOIN Appointment A
ON P.Patient_ID = A.Patient_ID;

--2 Find appointments scheduled with a specific doctor:
SELECT P.Name, A.AppointmentDate
FROM Appointment A
JOIN Doctor D
ON A.Doctor_ID = D.Doctor_ID
JOIN Patient P
ON A.Patient_ID = P.Patient_ID
WHERE D.Name = 'Dr. Asha Mehta';

--3 Count of appointments per doctor:

