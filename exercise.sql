CREATE DATABASE IF NOT EXISTS sterrenstelsel;
CREATE TABLE planeten (
    naam VARCHAR(100)
);
INSERT INTO planeten (naam)
VALUES ('Zon'),
       ('Mercurius'),
       ('Venus'),
       ('Aarde'),
       ('Mars');
       
SELECT * FROM planeten;

TRUNCATE TABLE planeten;

ALTER TABLE planeten
ADD COLUMN diameter INT,
ADD COLUMN afstand INT,
ADD COLUMN massa_vergeleken_met_aarde FLOAT;

INSERT INTO planeten (naam, diameter, afstand, massa_vergeleken_met_aarde) 
VALUES 
('Mercurius'),
('Venus'),
('Aarde'),
('Mars'),
('Jupiter'),
('Saturnus'),
('Uranus'),
('Neptunus');

ALTER TABLE planeten
MODIFY COLUMN naam VARCHAR(255) NOT NULL,
MODIFY COLUMN massa FLOAT NOT NULL,
MODIFY COLUMN afstand_tot_zon FLOAT NOT NULL;

ALTER TABLE planeten
ADD COLUMN bezoek_datum DATE;

INSERT INTO planeten (naam, massa, afstand_tot_zon, bezoek_datum)
VALUES ('Maan','1969-07-20');

ALTER TABLE planeten
ADD COLUMN id INT AUTO_INCREMENT PRIMARY KEY FIRST;

UPDATE planeten
SET naam = 'Teenalp'
WHERE naam = 'Mars';

USE sterrenstelsel;

UPDATE planeten
SET naam = 'Teenalp'
WHERE naam = 'Mars';

DELETE FROM planeten
WHERE naam = 'Teenalp';


SELECT * FROM planeten;