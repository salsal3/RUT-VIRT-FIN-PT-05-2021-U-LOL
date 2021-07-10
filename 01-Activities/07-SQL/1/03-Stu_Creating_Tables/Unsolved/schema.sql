-- Create a new database in pgAdmin named 'state_info'
-- Create an empty table named 'states'
CREATE TABLE states (
	state_name VARCHAR(50),
	state_abbreviation CHAR(2),
	population INT,
	state_property_tax_rate FLOAT
);