CREATE DATABASE School;
USE School;

CREATE TABLE Teachers (
    TeacherID INT PRIMARY KEY,
    FirstName VARCHAR(10),
    LastName VARCHAR(10)
);

CREATE TABLE TeacherDetails (
    DetailID INT PRIMARY KEY,
    TeacherID INT,
    Address VARCHAR(50),
    Phone VARCHAR(13),
    Email VARCHAR(50),
    FOREIGN KEY (TeacherID) REFERENCES Teachers(TeacherID)
);

CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(20),
    TeacherID INT,
    FOREIGN KEY (TeacherID) REFERENCES Teachers(TeacherID)
);

CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(10),
    LastName VARCHAR(10),
    EnrolledCourseID INT,
    FOREIGN KEY (EnrolledCourseID) REFERENCES Courses(CourseID)
);

INSERT INTO Teachers VALUES
(1,'Ayman', 'Jaradat'),
(2,'Batool', 'Aldalki'),
(3,'Amer', 'Abualhaija'),
(4,'Salam', 'Almomani'),
(5,'Mohammed', 'Frehat');



INSERT INTO TeacherDetails VALUES
(1,1, '123 makkah St', '+962770387833', 'ayman@orange.com'),
(2,2, '456 wasfi altal St', '+962770387822', 'batool@orange.com'),
(3,3, '789 madenah St', '+962770387811', 'amer@orange.com'),
(4,4, '321 aburashid St', '+962770387800', 'salam@orange.com'),
(5,5, '654 arar St', '+962770387899', 'mohammed@orange.com');

INSERT INTO Courses (CourseName, TeacherID) VALUES
('JavaScript', 1),
('C#', 2),
('Design', 3),
('MVC', 4),
('Core', 5);

INSERT INTO Students (FirstName, LastName, EnrolledCourseID) VALUES
('Nour', 'Shloul', 1),
('Tuqa', 'Harahsheh', 2),
('Ahmad', 'Qadoumi', 3),
('Ahmad', 'Yaqoub', 4),
('Rama', 'Odat', 5);


SELECT * FROM Teachers;
SELECT * FROM TeacherDetails;
SELECT * FROM Courses;
SELECT * FROM Students;


