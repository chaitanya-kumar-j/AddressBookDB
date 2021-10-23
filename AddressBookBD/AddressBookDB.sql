-- UC1 => Create database

CREATE DATABASE AddressBookService

USE AddressBookService

-- UC2 => Create table AddressBook
CREATE TABLE address_book
(
FirstName VARCHAR(50) not null,
LastName VARCHAR(50) not null,
Address VARCHAR(100) not null,
City VARCHAR(50) not null,
State VARCHAR(50) not null,
Zipcode VARCHAR(6) not null,
PhoneNumber VARCHAR(10) not null,
Email VARCHAR(50) not null
)
SELECT * FROM address_book

-- UC3 =>
INSERT INTO address_book VALUES ('Chaitanya', 'Kumar', 'sriram nagar', 'Proddatur', 'AP', '516360', '1234567890', 'dfghj')
INSERT INTO address_book VALUES ('chandra', 'jinka', 'sriram nagar', 'Proddatur', 'AP', '516360', '0987654234', 'laksjd')
INSERT INTO address_book VALUES ('sekhar', 'chandra', 'sriram nagar', 'Proddatur', 'AP', '516360', '4567234098', 'tewyqu')
SELECT * FROM address_book

-- UC4 =>
UPDATE address_book
SET PhoneNumber = '1234561234' where FirstName = 'Chaitanya'
SELECT * FROM address_book

-- UC5 =>
DELETE address_book WHERE FirstName = 'sekhar'
SELECT * FROM address_book

-- UC6 =>
SELECT * FROM address_book WHERE City = 'Proddatur' or State = 'KA';

-- UC7 =>
SELECT City,COUNT(City) FROM address_book GROUP BY City;
SELECT State,COUNT(State) FROM address_book GROUP BY State;

-- UC8 =>
SELECT * FROM Address_Book WHERE City = 'Proddatur' ORDER BY FirstName ASC;