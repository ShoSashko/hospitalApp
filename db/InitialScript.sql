CREATE TABLE Doctors (
Id  SERIAL PRIMARY KEY, 
Name VARCHAR(32),
DepartmentId INT,
Position VARCHAR(32)
)

CREATE TABLE Patients (
Id  SERIAL PRIMARY KEY, 
Name VARCHAR(32)
)

CREATE TABLE Departments (
Id SERIAL PRIMARY KEY,
Name VARCHAR(32),
DoorNumber INT
)

CREATE TABLE Appointments (
Id SERIAL PRIMARY KEY,
CreateDateTime TIMESTAMP WITHOUT TIME ZONE NULL,
PatientId INT
)

CREATE TABLE PatientSummaries (
Id  SERIAL PRIMARY KEY, 
DoctorId INT,
Conclusion VARCHAR(128),
PatientId INT
)
ALTER TABLE PatientSummaries 
ADD CONSTRAINT FK_DoctorId 
FOREIGN KEY(DoctorId)
REFERENCES Doctors(Id)

ALTER TABLE PatientSummaries 
ADD CONSTRAINT FK_PatientId 
FOREIGN KEY(PatientId)
REFERENCES Patients(Id)

ALTER TABLE Appointments
ADD CONSTRAINT FK_PatientIdAppointment 
FOREIGN KEY(AppointmentId)
REFERENCES Patients(Id)