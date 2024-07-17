CREATE DATABASE LibrarySystem;
use LibrarySystem;

--AUTHORS TABLE
CREATE TABLE Authors(
	ID INT PRIMARY KEY IDENTITY(1,1),
	Name VARCHAR(100)
);

INSERT INTO Authors (Name) 
VALUES	('Nour'),
		('Rashid'),
		('Nazzal'),
		('Ali'),
		('Shloul');


--BOOKS TABLE
CREATE TABLE Books(
	ID INT PRIMARY KEY IDENTITY(1,1),
	Name VARCHAR(100),
	AuthorID INT,
	FOREIGN KEY (AuthorID) REFERENCES Authors(ID),
);
INSERT INTO Books 
VALUES	('JS',1),
		('C#',2),
		('C++',3),
		('CSS',4),
		('CORE',5),
		('JAVA',3),
		('PYTHON',4);


--SECTIONS TABLE
CREATE TABLE Sections(
	ID INT PRIMARY KEY IDENTITY(1,1),
	SectionType VARCHAR(100),
	BookID INT,
	FOREIGN KEY (BookID) REFERENCES Books(ID),
);

INSERT INTO Sections
VALUES	('Circulation Section',1),
		('Technical Section',2),
		('Reference Section',3),
		('Special collections',4),
		('Children Library Section',5);

--CATEGORIES TABLE
CREATE TABLE Categories(
	ID INT PRIMARY KEY IDENTITY(1,1),
	Name VARCHAR(100),
	BookID INT,
	FOREIGN KEY (BookID) REFERENCES Books(ID)
);

INSERT INTO Categories 
VALUES  ('Science Fiction',1),
		('Fantasy',2),
		('Literary fiction',3),
		('Historical Fiction',4),
		('Horror',5);

--MANY-MANY RELATION(CATEGORIES WITH BOOK)
CREATE TABLE Categories_BookS(
	CategoryID INT,
	BookID INT,
	FOREIGN KEY (CategoryID) REFERENCES Categories(ID),
	FOREIGN KEY (BookID) REFERENCES Books(ID)

);

INSERT INTO Categories_BookS
VALUES  (1,2),
		(2,3),
		(3,1),
		(4,5),
		(5,4),
		(2,NULL),
		(NULL,1),
		(4,2),
		(1,1),
		(2,2);

--EMPLOYEE TABLE
CREATE TABLE Employees(
	ID INT PRIMARY KEY IDENTITY(1,1),
	Name VARCHAR(100),
	SectionID INT,
	FOREIGN KEY (SectionID) REFERENCES Sections(ID) 
);

INSERT INTO Employees 
VALUES	('Alaa',1),
		('Bahaa',2),
		('Diaa',3),
		('Mohammad',4),
		('Loai',5);

--USER TABLE
CREATE TABLE Users(
	ID INT PRIMARY KEY IDENTITY(1,1),
	Name VARCHAR(100),
	BookID INT,
	FOREIGN KEY (BookID) REFERENCES Books(ID)
);

INSERT INTO Users
VALUES  ('Zain',1),
		('Leen',2),
		('Sanad',3),
		('Awn',4),
		('Taim',5);


SELECT * FROM Authors;
SELECT * FROM  Books;
SELECT * FROM Sections;
SELECT * FROM Categories;
SELECT * FROM Categories_Books;
SELECT * FROM Employees;
SELECT * FROM Users;

SELECT * FROM Categories_BookS inner join Books on   Books.AuthorID=Categories_BookS.BookID;
SELECT * FROM Categories_BookS right join Books on   Books.AuthorID=Categories_BookS.BookID;
SELECT * FROM Categories_BookS left join Books on   Books.AuthorID=Categories_BookS.BookID;
SELECT * FROM Categories_BookS full outer join Books on   Books.AuthorID=Categories_BookS.BookID;

SELECT Authors.Name ,Books.Name FROM Authors join Books ON Authors.ID = Books.AuthorID;
SELECT * FROM Authors right join Books ON Authors.ID = Books.AuthorID;
SELECT Authors.ID ,Authors.Name ,  Books.ID,Books.Name FROM Authors left join Books ON Authors.ID = Books.AuthorID;
SELECT * FROM Authors full outer join Books ON Authors.ID = Books.AuthorID;









