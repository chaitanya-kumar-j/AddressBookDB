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

-- UC3 => Add data into table
INSERT INTO address_book VALUES ('Chaitanya', 'Kumar', 'sriram nagar', 'Proddatur', 'AP', '516360', '1234567890', 'dfghj')
INSERT INTO address_book VALUES ('Chandra', 'jinka', 'ram nagar', 'kadapa', 'AP', '516360', '0987654234', 'laksjd')
INSERT INTO address_book VALUES ('Mabel', 'christina', 'jaya nagar', 'bangalore', 'KA', '627819', '4567234098', 'tewyqu')
INSERT INTO address_book VALUES ('Mounika', 'A', 'vir nagar', 'chennai', 'TN', '527819', '1234567890', 'dfghj')
INSERT INTO address_book VALUES ('Rama', 'jinka', 'sriram nagar', 'Proddatur', 'AP', '516360', '0987654234', 'laksjd')
INSERT INTO address_book VALUES ('Ranadheera', 'Simha', 'gandhi nagar', 'Proddatur', 'AP', '516360', '4567234098', 'tewyqu')
INSERT INTO address_book VALUES ('Nibedita', 'Jena', 'Gobind nagar', 'Ramar', 'Orissa', '964339', '0987654234', 'laksjd')
INSERT INTO address_book VALUES ('Ranadheera', 'Simha', 'gandhi nagar', 'Proddatur', 'AP', '516360', '4567234098', 'tewyqu')
SELECT * FROM address_book

-- UC4 => change the data
UPDATE address_book
SET PhoneNumber = '1234561234' where FirstName = 'Chaitanya'
SELECT * FROM address_book

-- UC5 => remove data
DELETE address_book WHERE FirstName = 'sekhar'
SELECT * FROM address_book

-- UC6 => select required data
SELECT * FROM address_book WHERE City = 'Proddatur' or State = 'KA';

-- UC7 => select required data 
SELECT City,COUNT(City) FROM address_book GROUP BY City;
SELECT State,COUNT(State) FROM address_book GROUP BY State;

-- UC8 =>
SELECT * FROM Address_Book WHERE City = 'Proddatur' ORDER BY FirstName ASC;

-- UC9 => 
ALTER TABLE address_book ADD addressBookName varchar(25), type varchar(25)

UPDATE address_book SET addressBookName = 'Chaitanya',type = 'Family' WHERE FirstName = 'Vijaya' or FirstName = 'Chandra' or FirstName = 'Ranadheera'
UPDATE address_book SET addressBookName = 'Chaitanya',type = 'Profession' WHERE FirstName = 'Mabel' or FirstName = 'Mounika' or FirstName = 'Nibedita'
UPDATE address_book SET addressBookName = 'Chaitanya',type = 'Friends' WHERE FirstName = 'Rama'
UPDATE address_book SET addressBookName = 'Maruti',type = 'Friends' WHERE FirstName = 'Chaitanya'


-- UC10
SELECT type,COUNT(type) FROM address_book WHERE addressBookName = 'Maruti' GROUP BY type;
