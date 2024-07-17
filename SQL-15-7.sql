use master;
use Library;

CREATE TABLE Authorss 
(
	AuthorID Int,
	FirstName Varchar(30),
	LastName Varchar(30),
	BirthYear Varchar(20),
);

create table Bookss (
  BookID int,
  Title varchar(30),
  AuthorID int,
  PublishedYear int,
  CopiesAvailable int,
  BookCategory varchar(10)
);

INSERT INTO Authorss VALUES
(1,'Gabriel', 'Garcia Marquez', 1927),
(2,'J.K.', 'Rowling', 1965),
(3,'Haruki', 'Murakami', 1949),
(4,'Chinua', 'Achebe', 1930),
(5,'Isabel', 'Allende', 1942);

INSERT INTO Bookss VALUES
(1,'One Hundred Years of Solitude', 6, 1967, 10, 'Magical'),
(2,'Harry Potter and the Sorcerer', 7, 1997, 7, 'Fantasy'),
(3,'Kafka on the Shore', 8, 2002, 5, 'Fantasy'),
(4,'Things Fall Apart', 9, 1958, 8, 'Historical'),
(5,'The House of the Spirits', 10, 1982, 6, 'Magical');

select * FROM Authorss;
select * FROM Bookss;

select MAX(CopiesAvailable) AS MaxBook
FROM Bookss;

select MIN(CopiesAvailable) AS MinBook
FROM Bookss;

select AVG(PublishedYear) AS AVGPublishedYear
FROM Bookss;

select SUM(CopiesAvailable) AS SUMCopiesAvailable
FROM Bookss;

DELETE FROM Bookss;

DROP TABLE Authorss;



