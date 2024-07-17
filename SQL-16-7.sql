CREATE DATABASE School;
USE School;

CREATE TABLE Teacherss (
    TeacherID INT PRIMARY KEY identity(1,1),
    FirstName VARCHAR(10),
    LastName VARCHAR(10)
);

CREATE TABLE TeacherDetailss (
    DetailID INT PRIMARY KEY identity(1,1),
    TeacherID INT,
    Address VARCHAR(50),
    Phone VARCHAR(13),
    Email VARCHAR(50),
    FOREIGN KEY (TeacherID) REFERENCES Teacherss(TeacherID) ON DELETE CASCADE
);

CREATE TABLE Coursess (
    CourseID INT PRIMARY KEY ,
    CourseName VARCHAR(20),
    TeacherID INT,
    FOREIGN KEY (TeacherID) REFERENCES Teacherss(TeacherID) ON DELETE CASCADE
);

CREATE TABLE Studentss (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(10),
    LastName VARCHAR(10),
    --EnrolledCourseID INT,
    --FOREIGN KEY (EnrolledCourseID) REFERENCES Courses(CourseID) 
);

CREATE TABLE Enrollments (
    EnrollmentID INT PRIMARY KEY IDENTITY(1,1),
    StudentID INT, -- Foreign key 
    CourseID INT,  -- Foreign key 
    EnrollmentDate DATE,
    FOREIGN KEY (StudentID) REFERENCES Studentss(StudentID) ON DELETE CASCADE,
    FOREIGN KEY (CourseID) REFERENCES Coursess(CourseID) ON DELETE CASCADE
);

INSERT INTO Teacherss VALUES
(1,'Ayman', 'Jaradat'),
(2,'Batool', 'Aldalki'),
(3,'Amer', 'Abualhaija'),
(4,'Salam', 'Almomani'),
(5,'Mohammed', 'Frehat');


INSERT INTO TeacherDetailss VALUES
(1, '123 makkah St', '+962770387833', 'ayman@orange.com'),
(2, '456 wasfi altal St', '+962770387822', 'batool@orange.com'),
(3, '789 madenah St', '+962770387811', 'amer@orange.com'),
(4, '321 aburashid St', '+962770387800', 'salam@orange.com'),
(5, '654 arar St', '+962770387899', 'mohammed@orange.com');

INSERT INTO Coursess VALUES
(1,'JavaScript', 1),
(2,'C#', 2),
(3,'Design', 3),
(4,'MVC', 4),
(5,'Core', 5);

INSERT INTO Studentss (FirstName, LastName) VALUES
('Nour', 'Shloul'),
('Tuqa', 'Harahsheh'),
('Ahmad', 'Qadoumi'),
('Ahmad', 'Yaqoub'),
('Rama', 'Odat');

SELECT * FROM Teacherss;
SELECT * FROM TeacherDetailss;
SELECT * FROM Coursess;
SELECT * FROM Studentss;

