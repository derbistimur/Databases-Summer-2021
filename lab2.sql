CREATE DATABASE lab2;


CREATE table countries
(
    country_id SERIAL PRIMARY KEY,
    country_name VARCHAR(50),
    region_id integer,
    population integer
);


INSERT INTO countries VALUES (DEFAULT, 'Canada', 7, 999000);


INSERT INTO countries (country_id, country_name) VALUES (DEFAULT, 'Kazakhstan');


INSERT INTO countries VALUES (DEFAULT, 'Urumchi', NULL, 700048);


INSERT INTO countries (country_id, country_name, region_id, population) VALUES (DEFAULT, 'India', 8, 1756055),
                                                                               (DEFAULT, 'Pakistan', 3, 877828),
                                                                               (DEFAULT, 'France', 78, 1900088);


ALTER TABLE countries ALTER COLUMN country_name SET DEFAULT 'Kazakhstan';


INSERT INTO countries VALUES (DEFAULT, DEFAULT, 78,460000);


INSERT INTO countries VALUES (DEFAULT);


CREATE TABLE countries_new
(
    LIKE countries
);


INSERT INTO countries_new SELECT * FROM countries RETURNING *;


UPDATE countries SET region_id = 1 WHERE region_id IS NULL;


UPDATE countries SET population = population * 1.1 RETURNING country_name, population as "New Population";


DELETE FROM countries WHERE population < 100000;


DELETE FROM countries_new AS SN USING countries AS S WHERE SN.country_id = s.country_id RETURNING *;


DELETE FROM countries RETURNING *;


SELECT * FROM countries;











