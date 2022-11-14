# creating database for address book service
create database address_book_service;

# using database
use address_book_service;

# Creating table
CREATE TABLE address_book (
	first_name varchar(20),
    last_name varchar(20),
    address varchar(40),
    city varchar(30),
    state varchar(40),
    zip integer,
    phone_number bigint,
    email varchar(50)
);

# Describing table
desc address_book;

# Inserting records to table
INSERT INTO	address_book VALUES ('Pradeep', 'Rao', '23 Sambhu Nagar', 'Akola', 'Maharashtra', 444001, 9877832732, 'raopradeep@gmail.com');
INSERT INTO	address_book VALUES ('Kuldeep', 'Verma', '30 Varun gali', 'Tikamgarh', 'Madhya Pradesh', 472001, 9878792332, 'kuldeep477@gmail.com');

