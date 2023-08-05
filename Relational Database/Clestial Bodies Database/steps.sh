# Clestial Bodies Database

codeally@44edde8d8ae3:~/project$ psql --username=freecodecamp --dbname=postgres
Border style is 2.
Pager usage is off.
psql (12.9 (Ubuntu 12.9-2.pgdg20.04+1))
Type "help" for help.

postgres=> \l
                                 List of databases
+-----------+--------------+----------+---------+---------+-----------------------+
|   Name    |    Owner     | Encoding | Collate |  Ctype  |   Access privileges   |
+-----------+--------------+----------+---------+---------+-----------------------+
| postgres  | postgres     | UTF8     | C.UTF-8 | C.UTF-8 |                       |
| template0 | postgres     | UTF8     | C.UTF-8 | C.UTF-8 | =c/postgres          +|
|           |              |          |         |         | postgres=CTc/postgres |
| template1 | postgres     | UTF8     | C.UTF-8 | C.UTF-8 | =c/postgres          +|
|           |              |          |         |         | postgres=CTc/postgres |
| universe  | freecodecamp | UTF8     | C.UTF-8 | C.UTF-8 |                       |
+-----------+--------------+----------+---------+---------+-----------------------+
(4 rows)

postgres=> 


postgres=> \c universe
You are now connected to database "universe" as user "freecodecamp".
universe=> \d
Did not find any relations.
universe=> CREATE TABLE galaxy();
CREATE TABLE
universe=> CREATE TABLE star();
CREATE TABLE
universe=> CREATE TABLE planet();
CREATE TABLE
universe=> CREATE TABLE moon();
CREATE TABLE
universe=> ALTER TABLE galaxy ADD COLUMN galaxy_id SERIAL PRIMARY KEY; 
ALTER TABLE
universe=> \d galaxy
                                  Table "public.galaxy"
+-----------+---------+-----------+----------+-------------------------------------------+
|  Column   |  Type   | Collation | Nullable |                  Default                  |
+-----------+---------+-----------+----------+-------------------------------------------+
| galaxy_id | integer |           | not null | nextval('galaxy_galaxy_id_seq'::regclass) |
+-----------+---------+-----------+----------+-------------------------------------------+
Indexes:
    "galaxy_pkey" PRIMARY KEY, btree (galaxy_id)

universe=> 

universe=> ALTER TABLE star
universe-> ADD COLUMN star_id SERIAL PRIMARY KEY NOT NULL,
universe-> ADD COLUMN name VARCHAR(100) NOT NULL UNIQUE,
universe-> ADD COLUMN spectral_type VARCHAR(50),
universe-> ADD COLUMN luminosity NUMERIC(5, 2),
universe-> ADD COLUMN mass NUMERIC(5, 2),
universe-> ADD COLUMN distance_from_earth NUMERIC(5, 2),
universe-> ADD COLUMN is_active BOOLEAN,
universe-> ADD COLUMN temperature NUMERIC(5, 2),
universe-> ADD COLUMN galaxy_id INT REFERENCES galaxy(galaxy_id);
ALTER TABLE
universe=> \d
                     List of relations
+--------+----------------------+----------+--------------+
| Schema |         Name         |   Type   |    Owner     |
+--------+----------------------+----------+--------------+
| public | galaxy               | table    | freecodecamp |
| public | galaxy_galaxy_id_seq | sequence | freecodecamp |
| public | moon                 | table    | freecodecamp |
| public | planet               | table    | freecodecamp |
| public | star                 | table    | freecodecamp |
| public | star_star_id_seq     | sequence | freecodecamp |
+--------+----------------------+----------+--------------+
(6 rows)

universe=> \d star
                                              Table "public.star"
+---------------------+------------------------+-----------+----------+---------------------------------------+
|       Column        |          Type          | Collation | Nullable |                Default                |
+---------------------+------------------------+-----------+----------+---------------------------------------+
| star_id             | integer                |           | not null | nextval('star_star_id_seq'::regclass) |
| name                | character varying(100) |           | not null |                                       |
| spectral_type       | character varying(50)  |           |          |                                       |
| luminosity          | numeric(5,2)           |           |          |                                       |
| mass                | numeric(5,2)           |           |          |                                       |
| distance_from_earth | numeric(5,2)           |           |          |                                       |
| is_active           | boolean                |           |          |                                       |
| temperature         | numeric(5,2)           |           |          |                                       |
| galaxy_id           | integer                |           |          |                                       |
+---------------------+------------------------+-----------+----------+---------------------------------------+
Indexes:
    "star_pkey" PRIMARY KEY, btree (star_id)
    "star_name_key" UNIQUE CONSTRAINT, btree (name)
Foreign-key constraints:
    "star_galaxy_id_fkey" FOREIGN KEY (galaxy_id) REFERENCES galaxy(galaxy_id)

universe=> ALTER TABLE star
universe-> ALTER COLUMN temperature TYPE NUMERIC(5, 2) AFTER luminosity;
ERROR:  syntax error at or near "AFTER"
LINE 2: ALTER COLUMN temperature TYPE NUMERIC(5, 2) AFTER luminosity...
                                                    ^
universe=> \d star
                                              Table "public.star"
+---------------------+------------------------+-----------+----------+---------------------------------------+
|       Column        |          Type          | Collation | Nullable |                Default                |
+---------------------+------------------------+-----------+----------+---------------------------------------+
| star_id             | integer                |           | not null | nextval('star_star_id_seq'::regclass) |
| name                | character varying(100) |           | not null |                                       |
| spectral_type       | character varying(50)  |           |          |                                       |
| luminosity          | numeric(5,2)           |           |          |                                       |
| mass                | numeric(5,2)           |           |          |                                       |
| distance_from_earth | numeric(5,2)           |           |          |                                       |
| is_active           | boolean                |           |          |                                       |
| temperature         | numeric(5,2)           |           |          |                                       |
| galaxy_id           | integer                |           |          |                                       |
+---------------------+------------------------+-----------+----------+---------------------------------------+
Indexes:
    "star_pkey" PRIMARY KEY, btree (star_id)
    "star_name_key" UNIQUE CONSTRAINT, btree (name)
Foreign-key constraints:
    "star_galaxy_id_fkey" FOREIGN KEY (galaxy_id) REFERENCES galaxy(galaxy_id)

universe=> ALTER TABLE planet
ADD COLUMN planet_id SERIAL PRIMARY KEY NOT NULL,
ADD COLUMN name VARCHAR(50) NOT NULL UNIQUE,
ADD COLUMN type VARCHAR(50),
ADD COLUMN size NUMERIC(5, 2),
ADD COLUMN mass NUMERIC(5, 2),
ADD COLUMN distance_from_star NUMERIC(5, 2),
ADD COLUMN orbital_period NUMERIC(5, 2),
ADD COLUMN is_habitable BOOLEAN,
ADD star_id INT REFERENCES star(star_id);
ALTER TABLE
universe=> 

universe=> \d planet
                                              Table "public.planet"
+--------------------+-----------------------+-----------+----------+-------------------------------------------+
|       Column       |         Type          | Collation | Nullable |                  Default                  |
+--------------------+-----------------------+-----------+----------+-------------------------------------------+
| planet_id          | integer               |           | not null | nextval('planet_planet_id_seq'::regclass) |
| name               | character varying(50) |           | not null |                                           |
| type               | character varying(50) |           |          |                                           |
| size               | numeric(5,2)          |           |          |                                           |
| mass               | numeric(5,2)          |           |          |                                           |
| distance_from_star | numeric(5,2)          |           |          |                                           |
| orbital_period     | numeric(5,2)          |           |          |                                           |
| is_habitable       | boolean               |           |          |                                           |
| star_id            | integer               |           |          |                                           |
+--------------------+-----------------------+-----------+----------+-------------------------------------------+
Indexes:
    "planet_pkey" PRIMARY KEY, btree (planet_id)
    "planet_name_key" UNIQUE CONSTRAINT, btree (name)
Foreign-key constraints:
    "planet_star_id_fkey" FOREIGN KEY (star_id) REFERENCES star(star_id)


universe=> ALTER TABLE moon
universe-> ADD COLUMN moon_id SERIAL PRIMARY KEY NOT NULL,
universe-> ADD COLUMN name VARCHAR(50) NOT NULL UNIQUE,
universe-> ADD COLUMN size NUMERIC(5, 2),
universe-> ADD COLUMN mass NUMERIC(5, 2),
universe-> ADD COLUMN distance_from_planet NUMERIC(5, 2),
universe-> ADD COLUMN orbital_period NUMERIC(5, 2),
universe-> ADD COLUMN is_staellite BOOLEAN,
universe-> ADD COLUMN planet_id SERIAL REFERENCES planet(planet_id);
ALTER TABLE

universe=> \d moon
                                               Table "public.moon"
+----------------------+-----------------------+-----------+----------+-----------------------------------------+
|        Column        |         Type          | Collation | Nullable |                 Default                 |
+----------------------+-----------------------+-----------+----------+-----------------------------------------+
| moon_id              | integer               |           | not null | nextval('moon_moon_id_seq'::regclass)   |
| name                 | character varying(50) |           | not null |                                         |
| size                 | numeric(5,2)          |           |          |                                         |
| mass                 | numeric(5,2)          |           |          |                                         |
| distance_from_planet | numeric(5,2)          |           |          |                                         |
| orbital_period       | numeric(5,2)          |           |          |                                         |
| is_staellite         | boolean               |           |          |                                         |
| planet_id            | integer               |           | not null | nextval('moon_planet_id_seq'::regclass) |
+----------------------+-----------------------+-----------+----------+-----------------------------------------+
Indexes:
    "moon_pkey" PRIMARY KEY, btree (moon_id)
    "moon_name_key" UNIQUE CONSTRAINT, btree (name)
Foreign-key constraints:
    "moon_planet_id_fkey" FOREIGN KEY (planet_id) REFERENCES planet(planet_id)

universe=> ALTER TABLE moon RENAME COLUMN is_staellite TO is_satellite;
ALTER TABLE
universe=> 

CREATE TABLE
universe=> 
universe=> ALTER TABLE celestial_body
universe-> ADD COLUMN body_id SERIAL PRIMARY KEY NOT NULL,
universe-> ADD COLUMN name UNIQUE VARCHAR(50) NOT NULL,
universe-> ADD COLUMN type VARCHAR(50),
universe-> ADD COLUMN size NUMERIC(5, 2),
universe-> ADD COLUMN mass NUMERIC(5, 2),
universe-> ADD COLUMN is_active BOOLEAN,
universe-> ADD COLUMN galaxy_id SERIAL REFERENCES galaxy(galaxy_id);
ERROR:  syntax error at or near "UNIQUE"
LINE 3: ADD COLUMN name UNIQUE VARCHAR(50) NOT NULL,
                        ^
universe=> ALTER TABLE celestial_body
ADD COLUMN body_id SERIAL PRIMARY KEY NOT NULL,
ADD COLUMN name VARCHAR(50) NOT NULL UNIQUE,
ADD COLUMN type VARCHAR(50),
ADD COLUMN size NUMERIC(5, 2),
ADD COLUMN mass NUMERIC(5, 2),
ADD COLUMN is_active BOOLEAN,
ADD COLUMN galaxy_id SERIAL REFERENCES galaxy(galaxy_id);
ALTER TABLE
universe=> 

The syntax error you encountered is due to the incorrect order of the constraints in the ADD COLUMN statements. In PostgreSQL, when adding multiple constraints to a column, the UNIQUE and NOT NULL constraints should come before the data type.


***
this test was not satisfied
---
You should use the INT data type for at least two columns that are not a primary or foreign key
---
***

universe=> ALTER TABLE planet
universe-> ADD COLUMN planet_position INT NOT NULL,
universe-> ADD COLUMN random_number INT;
ALTER TABLE
universe=> \d planet
                                              Table "public.planet"
+--------------------+-----------------------+-----------+----------+-------------------------------------------+
|       Column       |         Type          | Collation | Nullable |                  Default                  |
+--------------------+-----------------------+-----------+----------+-------------------------------------------+
| planet_id          | integer               |           | not null | nextval('planet_planet_id_seq'::regclass) |
| name               | character varying(50) |           | not null |                                           |
| type               | character varying(50) |           |          |                                           |
| size               | numeric(5,2)          |           |          |                                           |
| mass               | numeric(5,2)          |           |          |                                           |
| distance_from_star | numeric(5,2)          |           |          |                                           |
| orbital_period     | numeric(5,2)          |           |          |                                           |
| is_habitable       | boolean               |           |          |                                           |
| star_id            | integer               |           |          |                                           |
| planet_position    | integer               |           | not null |                                           |
| random_number      | integer               |           |          |                                           |
+--------------------+-----------------------+-----------+----------+-------------------------------------------+
Indexes:
    "planet_pkey" PRIMARY KEY, btree (planet_id)
    "planet_name_key" UNIQUE CONSTRAINT, btree (name)
Foreign-key constraints:
    "planet_star_id_fkey" FOREIGN KEY (star_id) REFERENCES star(star_id)
Referenced by:
    TABLE "moon" CONSTRAINT "moon_planet_id_fkey" FOREIGN KEY (planet_id) REFERENCES planet(planet_id)

universe=> 

***
this check was not getting passed before
---
Each primary key column should follow the naming convention table_name_id. For example, the moon table should have a primary key column named moon_id
---
***

universe=> ALTER TABLE celestial_body
universe-> RENAME body_id TO celestial_body_id;
ALTER TABLE
universe=> 

***
done
***

***
now only 

Each "star" should have a foreign key that references one of the rows in galaxy

Each "planet" should have a foreign key that references one of the rows in star

Each "moon" should have a foreign key that references one of the rows in planet
***

universe=> \d
                         List of relations
+--------+------------------------------+----------+--------------+
| Schema |             Name             |   Type   |    Owner     |
+--------+------------------------------+----------+--------------+
| public | celestial_body               | table    | freecodecamp |
| public | celestial_body_body_id_seq   | sequence | freecodecamp |
| public | celestial_body_galaxy_id_seq | sequence | freecodecamp |
| public | galaxy                       | table    | freecodecamp |
| public | galaxy_galaxy_id_seq         | sequence | freecodecamp |
| public | moon                         | table    | freecodecamp |
| public | moon_moon_id_seq             | sequence | freecodecamp |
| public | moon_planet_id_seq           | sequence | freecodecamp |
| public | planet                       | table    | freecodecamp |
| public | planet_planet_id_seq         | sequence | freecodecamp |
| public | star                         | table    | freecodecamp |
| public | star_star_id_seq             | sequence | freecodecamp |
+--------+------------------------------+----------+--------------+
(12 rows)

universe=> INSERT INTO galaxy (name, description, size, distance_from_earth, is_active) 
VALUES('Milky Way', 'The Milk is a barred spiral galaxy that we are part of', 100.00, 300.00, true),
('Silky Way', 'The Silky way is imaginative galaxy named and made by me', 172.32, 679.00, true),
('The Grand Line', 'The Grand Line is where, One Piece is happening', 235.44, 453.11, true),
('Z line', 'Dragon ball galaxy', 679.00, 999.65, true),
('Alchamey line', 'FullMetal Alchamist are here', 552.00, 111.11, true),
('Ninja Way', 'You guessed its the ninja way -Naruto and gang here and Sakura sucks', 281.99, 662.13, true),
('Demon Way', 'Demon slayer galaxy', 469.75, 234.44, true),
('WarHammer 40k', 'this is the galaxy owned by GW - everything is expensive here', 989.99, 999.99, true),
('Akhand-Bharat', 'This galaxy has Akahand Bharat, Jai Shri Krishna, Jai Shri Ramji, Jai Shri Sita MATA, Jai Shri Hanuman ji', 999.99, 999.99, true),
('the programmers galaxy', 'Here no coorporate bullshittery, every fresher gets a job, no exaggerated JDs', 777.99, 888.91, true),
('the gammer way', 'Dreamers Galaxy', 123.32, 444.44, true);
INSERT 0 11
universe=> \d star
                                              Table "public.star"
+---------------------+------------------------+-----------+----------+---------------------------------------+
|       Column        |          Type          | Collation | Nullable |                Default                |
+---------------------+------------------------+-----------+----------+---------------------------------------+
| star_id             | integer                |           | not null | nextval('star_star_id_seq'::regclass) |
| name                | character varying(100) |           | not null |                                       |
| spectral_type       | character varying(50)  |           |          |                                       |
| luminosity          | numeric(5,2)           |           |          |                                       |
| mass                | numeric(5,2)           |           |          |                                       |
| distance_from_earth | numeric(5,2)           |           |          |                                       |
| is_active           | boolean                |           |          |                                       |
| temperature         | numeric(5,2)           |           |          |                                       |
| galaxy_id           | integer                |           |          |                                       |
+---------------------+------------------------+-----------+----------+---------------------------------------+
Indexes:
    "star_pkey" PRIMARY KEY, btree (star_id)
    "star_name_key" UNIQUE CONSTRAINT, btree (name)
Foreign-key constraints:
    "star_galaxy_id_fkey" FOREIGN KEY (galaxy_id) REFERENCES galaxy(galaxy_id)
Referenced by:
    TABLE "planet" CONSTRAINT "planet_star_id_fkey" FOREIGN KEY (star_id) REFERENCES star(star_id)

universe=> INSERT INTO star(name, spectral_type, luminosity, mass, distance_from_earth, is_active, temperature, galaxy_id)
universe-> VALUES('Sun', 'G2V', 1.00, 1.00, true, 577.00, 1);
ERROR:  INSERT has more target columns than expressions
LINE 1: ...ass, distance_from_earth, is_active, temperature, galaxy_id)
                                                             ^
universe=> INSERT INTO star(name, spectral_type, luminosity, mass, distance_from_earth, is_active, temperature, galaxy_id)
VALUES('Sun', 'G2V', 1.00, 1.00, 1.00, true, 577.00, 1);
INSERT 0 1
universe=> SELECT * FROM star;
+---------+------+---------------+------------+------+---------------------+-----------+-------------+-----------+
| star_id | name | spectral_type | luminosity | mass | distance_from_earth | is_active | temperature | galaxy_id |
+---------+------+---------------+------------+------+---------------------+-----------+-------------+-----------+
|       1 | Sun  | G2V           |       1.00 | 1.00 |                1.00 | t         |      577.00 |         1 |
+---------+------+---------------+------------+------+---------------------+-----------+-------------+-----------+
(1 row)

universe=> SELECT * FROM galaxy;
+-----------+------------------------+-----------------------------------------------------------------------------------------------------------+--------+---------------------+-----------+
| galaxy_id |          name          |                                                description                                                |  size  | distance_from_earth | is_active |
+-----------+------------------------+-----------------------------------------------------------------------------------------------------------+--------+---------------------+-----------+
|         1 | Milky Way              | The Milk is a barred spiral galaxy that we are part of                                                    | 100.00 |              300.00 | t         |
|         2 | Silky Way              | The Silky way is imaginative galaxy named and made by me                                                  | 172.32 |              679.00 | t         |
|         3 | The Grand Line         | The Grand Line is where, One Piece is happening                                                           | 235.44 |              453.11 | t         |
|         4 | Z line                 | Dragon ball galaxy                                                                                        | 679.00 |              999.65 | t         |
|         5 | Alchamey line          | FullMetal Alchamist are here                                                                              | 552.00 |              111.11 | t         |
|         6 | Ninja Way              | You guessed its the ninja way -Naruto and gang here and Sakura sucks                                      | 281.99 |              662.13 | t         |
|         7 | Demon Way              | Demon slayer galaxy                                                                                       | 469.75 |              234.44 | t         |
|         8 | WarHammer 40k          | this is the galaxy owned by GW - everything is expensive here                                             | 989.99 |              999.99 | t         |
|         9 | Akhand-Bharat          | This galaxy has Akahand Bharat, Jai Shri Krishna, Jai Shri Ramji, Jai Shri Sita MATA, Jai Shri Hanuman ji | 999.99 |              999.99 | t         |
|        10 | the programmers galaxy | Here no coorporate bullshittery, every fresher gets a job, no exaggerated JDs                             | 777.99 |              888.91 | t         |
|        11 | the gammer way         | Dreamers Galaxy                                                                                           | 123.32 |              444.44 | t         |
+-----------+------------------------+-----------------------------------------------------------------------------------------------------------+--------+---------------------+-----------+
(11 rows)

universe=> 

universe=> INSERT INTO star(name, spectral_type, luminosity, mass, distance_from_earth, is_active, temperature, galaxy_id)
VALUES('KEN', 'G2z', 4.44, 5.21, 4.12, true, 546.00, 2),
('yelo', 'eeds', 56.34, 123.11, 676.32, true, 111.00, 3),
('Deez Nuts', 'unhs', 00.00, 00.00, 00.00, false, 00.00, 4),
('Magic', 'speel', 99.9, 77.7, 55.4, true, 99.00, 5),
('hhh', 'yyt', 199.62, 23.87, 111.65, true, 87.11, 6),
('Hokage', 'Hinata', 111.11, 222.22, 333.33, true, 65.99, 7),
('hhsz', 'uuyt', 123.22, 332.11, 223.11, true, 54, 8),
('Shri Vishnu ji', 'Vasudev', 99.99, 99.99, 99.09, true, 99.99, 9),
('chip err', 'ooiu', 516.12, 101.01, 44.04, false, 10.00, 10),
('YT-strimer', 'paid-promotion', 11.00, 22.00, 33.00, true, 99.99, 11);
INSERT 0 10
universe=> \d
                         List of relations
+--------+------------------------------+----------+--------------+
| Schema |             Name             |   Type   |    Owner     |
+--------+------------------------------+----------+--------------+
| public | celestial_body               | table    | freecodecamp |
| public | celestial_body_body_id_seq   | sequence | freecodecamp |
| public | celestial_body_galaxy_id_seq | sequence | freecodecamp |
| public | galaxy                       | table    | freecodecamp |
| public | galaxy_galaxy_id_seq         | sequence | freecodecamp |
| public | moon                         | table    | freecodecamp |
| public | moon_moon_id_seq             | sequence | freecodecamp |
| public | moon_planet_id_seq           | sequence | freecodecamp |
| public | planet                       | table    | freecodecamp |
| public | planet_planet_id_seq         | sequence | freecodecamp |
| public | star                         | table    | freecodecamp |
| public | star_star_id_seq             | sequence | freecodecamp |
+--------+------------------------------+----------+--------------+
(12 rows)

universe=> SELECT * from star
universe-> ;
+---------+----------------+----------------+------------+--------+---------------------+-----------+-------------+-----------+
| star_id |      name      | spectral_type  | luminosity |  mass  | distance_from_earth | is_active | temperature | galaxy_id |
+---------+----------------+----------------+------------+--------+---------------------+-----------+-------------+-----------+
|       1 | Sun            | G2V            |       1.00 |   1.00 |                1.00 | t         |      577.00 |         1 |
|       2 | KEN            | G2z            |       4.44 |   5.21 |                4.12 | t         |      546.00 |         2 |
|       3 | yelo           | eeds           |      56.34 | 123.11 |              676.32 | t         |      111.00 |         3 |
|       4 | Deez Nuts      | unhs           |       0.00 |   0.00 |                0.00 | f         |        0.00 |         4 |
|       5 | Magic          | speel          |      99.90 |  77.70 |               55.40 | t         |       99.00 |         5 |
|       6 | hhh            | yyt            |     199.62 |  23.87 |              111.65 | t         |       87.11 |         6 |
|       7 | Hokage         | Hinata         |     111.11 | 222.22 |              333.33 | t         |       65.99 |         7 |
|       8 | hhsz           | uuyt           |     123.22 | 332.11 |              223.11 | t         |       54.00 |         8 |
|       9 | Shri Vishnu ji | Vasudev        |      99.99 |  99.99 |               99.09 | t         |       99.99 |         9 |
|      10 | chip err       | ooiu           |     516.12 | 101.01 |               44.04 | f         |       10.00 |        10 |
|      11 | YT-strimer     | paid-promotion |      11.00 |  22.00 |               33.00 | t         |       99.99 |        11 |
+---------+----------------+----------------+------------+--------+---------------------+-----------+-------------+-----------+
(11 rows)

universe=> 

universe=> \d moon
                                               Table "public.moon"
+----------------------+-----------------------+-----------+----------+-----------------------------------------+
|        Column        |         Type          | Collation | Nullable |                 Default                 |
+----------------------+-----------------------+-----------+----------+-----------------------------------------+
| moon_id              | integer               |           | not null | nextval('moon_moon_id_seq'::regclass)   |
| name                 | character varying(50) |           | not null |                                         |
| size                 | numeric(5,2)          |           |          |                                         |
| mass                 | numeric(5,2)          |           |          |                                         |
| distance_from_planet | numeric(5,2)          |           |          |                                         |
| orbital_period       | numeric(5,2)          |           |          |                                         |
| is_satellite         | boolean               |           |          |                                         |
| planet_id            | integer               |           | not null | nextval('moon_planet_id_seq'::regclass) |
+----------------------+-----------------------+-----------+----------+-----------------------------------------+
Indexes:
    "moon_pkey" PRIMARY KEY, btree (moon_id)
    "moon_name_key" UNIQUE CONSTRAINT, btree (name)
Foreign-key constraints:
    "moon_planet_id_fkey" FOREIGN KEY (planet_id) REFERENCES planet(planet_id)

all the table and data

universe=> \d moon
                                               Table "public.moon"
+----------------------+-----------------------+-----------+----------+-----------------------------------------+
|        Column        |         Type          | Collation | Nullable |                 Default                 |
+----------------------+-----------------------+-----------+----------+-----------------------------------------+
| moon_id              | integer               |           | not null | nextval('moon_moon_id_seq'::regclass)   |
| name                 | character varying(50) |           | not null |                                         |
| size                 | numeric(5,2)          |           |          |                                         |
| mass                 | numeric(5,2)          |           |          |                                         |
| distance_from_planet | numeric(5,2)          |           |          |                                         |
| orbital_period       | numeric(5,2)          |           |          |                                         |
| is_satellite         | boolean               |           |          |                                         |
| planet_id            | integer               |           | not null | nextval('moon_planet_id_seq'::regclass) |
+----------------------+-----------------------+-----------+----------+-----------------------------------------+
Indexes:
    "moon_pkey" PRIMARY KEY, btree (moon_id)
    "moon_name_key" UNIQUE CONSTRAINT, btree (name)
Foreign-key constraints:
    "moon_planet_id_fkey" FOREIGN KEY (planet_id) REFERENCES planet(planet_id)

universe=> 




