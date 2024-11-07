--SELECT TOP (1000) [Id]
--      ,[Date]
--      ,[DiseaseId]
--      ,[DoctorId]
--      ,[ExaminationId]
--      ,[WardId]
--  FROM [Hospital].[dbo].[DoctorsExaminations]

--1. ������� �������� � ����������� �����, �������������
--� 5-� �������, ������������ 5 � ����� ����, ���� � ����
--������� ���� ���� �� ���� ������ ������������ �����
--15 ����.
--SELECT Departments.Building Building, Wards.Name Name, Wards.Places Places
--FROM Wards 
--JOIN Departments
--ON Wards.DepartmentId = Departments.Id
--WHERE Departments.Building = 5 and Wards.Places > 5;

--2. ������� �������� ��������� � ������� �����������
--���� �� ���� ������������ �� ��������� ������.
--SELECT Wards.Name Name, DoctorsExaminations.Date Date
--FROM Wards 
--JOIN DoctorsExaminations
--ON Wards.Id = DoctorsExaminations.WardId
--WHERE DoctorsExaminations.Date >= '25-07-2024';

--3. ������� �������� �����������, ��� ������� �� ���������� ������������.
--SELECT Diseases.Name Name, DoctorsExaminations.Date '�� ���������� ������������'
--FROM Diseases
--JOIN DoctorsExaminations
--ON Diseases.Id = DoctorsExaminations.DiseaseId
--WHERE DoctorsExaminations.Date = '01.08.2024';


--4. ������� ������ ����� ������, ������� �� ��������
--������������.
--SELECT Doctors.Name Name, Doctors.Surname Surname, DoctorsExaminations.Date '�� ���������� ������������'
--FROM DoctorsExaminations
--JOIN Doctors
--ON DoctorsExaminations.DoctorId = Doctors.Id
--WHERE DoctorsExaminations.Date = '01.08.2024';

--5. ������� �������� ���������, � ������� �� ����������
--������������.
--SELECT Wards.Name Name, DoctorsExaminations.Date '�� ���������� ������������'
--FROM Wards 
--JOIN DoctorsExaminations
--ON Wards.Id = DoctorsExaminations.WardId
--WHERE DoctorsExaminations.Date >= '01.08.2024';

--6. ������� ������� ������, ������� �������� ���������.
--SELECT Doctors.Surname Surname, Interns.Id ID
--FROM Doctors
--JOIN Interns
--ON Doctors.Id = Interns.DoctorId

--7. ������� ������� ��������, ������ ������� ������,
--��� ������ ���� �� ������ �� ������.
--SELECT Interns.Id ID, Doctors.Surname Surname, Doctors.Salary Salary
--FROM Doctors
--JOIN Interns
--ON Doctors.Id = Interns.DoctorId
--WHERE Doctors.Salary > 500

--8. ������� �������� �����, ��� ����������� ������, ���
--����������� ������ ������, ����������� � 3-� �������.
--SELECT Wards.Name, Wards.Places, Departments.Building
--FROM Departments
--JOIN Wards
--ON Wards.DepartmentId = Departments.Id

--9. ������� ������� ������, ���������� ������������ �
--���������� �Ophthalmology� � �Physiotherapy�.
--SELECT Doctors.Surname, DoctorsExaminations.DoctorId, DoctorsExaminations.WardId, Wards.Name
--FROM DoctorsExaminations
--JOIN Doctors
--ON Doctors.Id = DoctorsExaminations.DoctorId
--JOIN Wards
--ON Wards.Id = DoctorsExaminations.WardId
--WHERE Wards.Name = 'Pulmonological' or Wards.Name = 'Endoscopic'

--10. ������� �������� ���������, � ������� �������� ������� � ����������.
--SELECT Wards.Name Name
--FROM Wards
--JOIN DoctorsExaminations
--ON DoctorsExaminations.WardId = Wards.Id
--JOIN Doctors
--ON DoctorsExaminations.DoctorId = Doctors.Id
--JOIN Interns
--ON Doctors.Id = Interns.DoctorId
--JOIN Professors
--ON Doctors.Id = Professors.DoctorId or Doctors.Id = Interns.DoctorId

--11. ������� ������ ����� ������ � ��������� � �������
--��� �������� ������������, ���� ��������� ����� ����
--�������������� ����� 20000.
--SELECT Doctors.Name, Doctors.Surname, Wards.Name, Departments.Financing
--FROM Doctors
--JOIN DoctorsExaminations
--ON DoctorsExaminations.DoctorId = DoctorId
--JOIN Wards
--ON Wards.Id = DoctorsExaminations.WardId
--JOIN Departments
--ON Departments.Id = Wards.DepartmentId
--WHERE Departments.Financing > 20000

--12. ������� �������� ���������, � ������� �������� ������������ ���� � ���������� �������.
--SELECT MAX(Doctors.Salary), Wards.Name
--FROM Doctors
--JOIN DoctorsExaminations
--ON DoctorsExaminations.DoctorId = Doctors.Id
--JOIN Wards
--ON DoctorsExaminations.WardId = Wards.Id
--GROUP BY Wards.Name

--13. ������� �������� ����������� � ���������� ���������� �� ��� ������������.
--SELECT Diseases.Name, Count(*) Count
--FROM DoctorsExaminations
--JOIN Diseases
--ON Diseases.Id = DoctorsExaminations.DiseaseId
--GROUP BY Diseases.Name
