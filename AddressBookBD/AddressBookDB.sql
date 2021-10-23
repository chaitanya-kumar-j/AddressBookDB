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

-- UC4 =>

-- UC5 =>

-- UC6 =>

-- UC7 =>

-- UC8 =>