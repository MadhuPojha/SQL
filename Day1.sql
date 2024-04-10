-- 1. Write a SQL statement to create a simple table countries including columns country_id,country_name and region_id.
CREATE TABLE countries (
  country_id INTEGER,
  country_name varchar(255),
  region_id varchar(255)
);
-- =================================================================================================================================================

-- 2. Write a SQL statement to create the structure of a table dup_countries similar to countries.
CREATE TABLE dup_countries AS
    SELECT country_id, country_name, region_id
    FROM countries
  
-- =================================================================================================================================================

-- 3. Write a SQL statement to create a table countries set a constraint NOT NULL.
CREATE TABLE countries (
  country_id INTEGER NOT NULL,
  country_name varchar(255) NOT NULL,
  region_id varchar(255) NOT NULL
);

-- =================================================================================================================================================

-- 4. Write a SQL statement to insert a record with your own value into the table countries against each columns.
INSERT INTO countries (country_id, country_name, region_id)
VALUES ('10', 'Sweden', 'Stockholm');

-- =================================================================================================================================================

-- 5. Write a SQL statement to insert 3 rows by a single insert statement.
INSERT INTO countries (country_id, country_name, region_id)
VALUES 
('10', 'Sweden', 'Strockholm'),
('11', 'Sweden', 'Solna'),
('12', 'Sweden', 'Goteborg');

-- =================================================================================================================================================

-- 6. Write a SQL statement to insert a record into the table countries to ensure that, a country_id and region_id combination will be entered once in the table.
CREATE TABLE countries (
  country_id INTEGER NOT NULL,
  country_name varchar(255) NOT NULL,
  region_id varchar(255) NOT NULL,
  PRIMARY KEY (country_id, region_id)
);
