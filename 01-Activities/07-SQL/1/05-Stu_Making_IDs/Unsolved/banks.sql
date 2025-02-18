-- Drop table "banks" if exists
DROP TABLE IF EXISTS banks;

-- Create new table
CREATE TABLE banks (
  bank_id SERIAL PRIMARY KEY,
  bank_name VARCHAR(50),
  bank_routing_number BIGINT
);

-- Insert new data
INSERT INTO banks 
(bank_name, bank_routing_number)
VALUES
('Bank of America', 198491827),
('Wells Fargo', 629873495),
('JPMorgan Chase', 2340903984),
('Citigroup', 890123900),
('TD Bank', 905192010),
('Capital One', 184619239),
('Capital One', 184619239);

-- Query all columns and rows from the banks table
SELECT *
FROM banks;

-- Query all columns and rows with bank name equal to "Capital One"
SELECT *
FROM banks
WHERE bank_name = 'Capital One';

-- Drop the duplicate Capital One row
-- and verify the change
DELETE FROM banks
WHERE bank_id = 7;

SELECT *
FROM banks;

-- Add additional data
-- and verify the change
INSERT INTO banks
(bank_name, bank_routing_number)
VALUES
('Ally Bank', 316289502),
('Discover Bank', 639893944),
('Bank of New York Mellon', 8734569384);

SELECT *
FROM banks;

-- Update "Citigroup" to "PNC Bank"
-- and verify the change
UPDATE banks
SET bank_name = 'PNC Bank'
WHERE bank_id = 4;

SELECT *
FROM banks;

-- Update bank_routing_number for bank_id 2
-- and verify the change
UPDATE banks
SET bank_routing_number = 1995826182
WHERE bank_id = 2;

SELECT *
FROM banks;

-- BONUS
-- Add a "mortgage_lender" column with the boolean default of true
ALTER TABLE banks
ADD COLUMN mortgage_lender BOOLEAN default true;

SELECT *
FROM banks;