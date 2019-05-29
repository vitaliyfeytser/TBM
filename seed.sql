-- Drops the blogger if it exists currently --
DROP DATABASE IF EXISTS tbm_db;
-- Creates the "tbm_db" database --
CREATE DATABASE tbm_db;

USE tbm_db;

CREATE TABLE properties (
	id Int(11) AUTO_INCREMENT NOT NULL,
	address VARCHAR(255) NOT NULL,
	location VARCHAR(255) NOT NULL,
	companyName VARCHAR(255) NOT NULL,
	propertyType VARCHAR(255) NOT NULL,
	leased BOOLEAN NOT NULL,
	beds DECIMAL(20,2) NOT NULL,
    baths DECIMAL(20,2) NOT NULL, 
    size DECIMAL(20,2) NOT NULL, 
    rentPrice DECIMAL(20,2) NOT NULL, 
    createdAt datetime, 
    updatedAt datetime,
	/* Set ID as primary key */
	PRIMARY KEY (id)
);

INSERT INTO properties (address, location, companyName, propertyType, leased, beds, baths, size, rentPrice, createdAt, updatedAt)
VALUES 
    ('2212 Grace Ave','Sacramento, CA', 'Tower Properties', 'Single Family', false, 4, 2.5, 1887, 1350, sysdate(),sysdate()),
    ('438 Burgess Dr','Sacramento, CA', 'Tower Properties', 'Single Family', true, 4, 2, 1491, 1200, sysdate(),sysdate()),
    ('1680 Sotano Dr','Sacramento, CA', 'Tower Properties', 'Single Family', false, 4, 2, 1600, 1300, sysdate(),sysdate()),
    ('101 W El Camino Ave','Sacramento, CA', 'Tower Properties', 'Single Family', true, 3, 1, 1072, 1100, sysdate(),sysdate()),
    ('263 Northglen St','Sacramento, CA', 'Tower Properties', 'Single Family', false, 3, 1, 952, 1100, sysdate(),sysdate()),
    ('1818 G st #1','Sacramento, CA', 'Tower Properties', 'Condominium', true, 1, 1, 550, 1400, sysdate(),sysdate()),
    ('1818 G st #4','Sacramento, CA', 'Tower Properties', 'Condominium', false, 2, 1, 750, 1800, sysdate(),sysdate())
;
