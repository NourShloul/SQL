use Library;

CREATE TABLE Authors 
(
	AuthorID Int,
	FirstName Varchar(30),
	LastName Varchar(30),
	BirthYear Varchar(20),
);

create table Books (
  BookID int,
  Title varchar(30),
  AuthorID int,
  PublishedYear int,
  CopiesAvailable int,
  BookCategory varchar(10)
);

INSERT INTO Authors VALUES
(1,'Gabriel', 'Garcia Marquez', 1927),
(2,'J.K.', 'Rowling', 1965),
(3,'Haruki', 'Murakami', 1949),
(4,'Chinua', 'Achebe', 1930),
(5,'Isabel', 'Allende', 1942);

INSERT INTO Books VALUES
(1,'One Hundred Years of Solitude', 6, 1967, 10, 'Magical Realism'),
(2,'Harry Potter and the Sorcerer', 7, 1997, 7, 'Fantasy'),
(3,'Kafka on the Shore', 8, 2002, 5, 'Fantasy'),
(4,'Things Fall Apart', 9, 1958, 8, 'Historical Fiction'),
(5,'The House of the Spirits', 10, 1982, 6, 'Magical Realism');




select * FROM Authors;
select * FROM Books;

select MAX(CopiesAvailable) AS MaxBook
FROM Books;

select MIN(CopiesAvailable) AS MinBook
FROM Books;

select AVG(PublishedYear) AS AVGPublishedYear
FROM Books;

select SUM(CopiesAvailable) AS SUMCopiesAvailable
FROM Books;

DELETE FROM Books;

DROP TABLE Authors;



