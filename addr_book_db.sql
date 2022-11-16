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

# Disabling Safe Update mode.
SET SQL_SAFE_UPDATES = 0;

# Editing existed record
UPDATE address_book SET phone_number = 8883278342, email = 'kuldeep77verma@gmail.com' where first_name = "Kuldeep" and last_name = "Verma";

# Delete a person using persons name
DELETE FROM address_book WHERE first_name = 'Pradeep' and last_name = 'Rao';

# Retrieving records based on particular city or state
SELECT * FROM address_book WHERE city = 'Tikamgarh' and state = 'Madhya Pradesh';

# Size(count) of address book by city and state.
SELECT COUNT(*) FROM address_book WHERE city = 'Tikamgarh' and state = 'Madhya Pradesh';

# Retrieve entries sorted alphabetically from particular column value.
SELECT * FROM address_book where city = 'Tikamgarh' order by first_name, last_name;

# Adding address book name and type to table.
Alter table address_book add (addr_book_name varchar(30), addr_book_type varchar(25));

# Getting count by type.
SELECT COUNT(*) FROM address_book group by addr_book_type;

# Adding entry for friend and family types
INSERT INTO address_book VALUES (
	"Aadarsh", "Songara", "27 Balgarh", "Pune", "Maharashtra", 444002, 8874387435, "aadarsh@gmail.com", "My Friends", "Friends"
);
INSERT INTO address_book VALUES (
	"Radhbai", "Jhala", "43 Racholi", "Dewas", "Madhya Pradesh", 423002, 9833287435, "bairadha@gmail.com", "Cool Family", "Family"
);