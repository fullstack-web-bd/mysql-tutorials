-- Create Primary Key
CREATE TABLE primary_test(
  ID int PRIMARY KEY
);

-- Create Primary Key Multiple
CREATE TABLE primary_test(
  	ID INT NOT NULL,
    EMAIL VARCHAR(50) NOT NULL,

	PRIMARY KEY(ID, EMAIL)
);

-- Create Primary KEY
ALTER TABLE education
ADD PRIMARY KEY (employee_id);

-- Create Foreign KEY
ALTER TABLE education
ADD FOREIGN KEY
(employee_id) REFERENCES employee (id);

-- Create Unique key
CREATE TABLE primary_test3(
  	ID INT NOT NULL,
    EMAIL VARCHAR(50) NOT NULL UNIQUE,

	PRIMARY KEY(ID)
);

-- Create Index
ALTER TABLE employee
ADD INDEX (salary);
