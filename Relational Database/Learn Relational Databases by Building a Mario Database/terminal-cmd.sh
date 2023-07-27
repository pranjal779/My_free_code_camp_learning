codeally@ffe260f7b3d3:~/project$ echo hello PostgreSQL
hello PostgreSQL
codeally@ffe260f7b3d3:~/project$ psql --username=freecodecamp --dbname=postgres
Border style is 2.
Title is " ".
Pager usage is off.
psql (12.9 (Ubuntu 12.9-2.pgdg20.04+1))
Type "help" for help.

postgres=> \l
postgres=>                                List of databases
+-----------+----------+----------+---------+---------+-----------------------+
|   Name    |  Owner   | Encoding | Collate |  Ctype  |   Access privileges   |
+-----------+----------+----------+---------+---------+-----------------------+
| postgres  | postgres | UTF8     | C.UTF-8 | C.UTF-8 |                       |
| template0 | postgres | UTF8     | C.UTF-8 | C.UTF-8 | =c/postgres          +|
|           |          |          |         |         | postgres=CTc/postgres |
| template1 | postgres | UTF8     | C.UTF-8 | C.UTF-8 | =c/postgres          +|
|           |          |          |         |         | postgres=CTc/postgres |
+-----------+----------+----------+---------+---------+-----------------------+
(3 rows)

The databases you see are there by default. You can make your own like this:

CREATE DATABASE database_name;
The capitalized words are keywords telling PostgreSQL what to do. The name of the database is the lowercase word. Note that all commands need a semi-colon at the end. Create a new database named first_database.

postgres=> CREATE DATABASE first_database;


Use the list shortcut command again to make sure your new database is there.

postgres=> \l

postgres=>                                    List of databases
+----------------+--------------+----------+---------+---------+-----------------------+
|      Name      |    Owner     | Encoding | Collate |  Ctype  |   Access privileges   |
+----------------+--------------+----------+---------+---------+-----------------------+
| first_database | freecodecamp | UTF8     | C.UTF-8 | C.UTF-8 |                       |
| postgres       | postgres     | UTF8     | C.UTF-8 | C.UTF-8 |                       |
| template0      | postgres     | UTF8     | C.UTF-8 | C.UTF-8 | =c/postgres          +|
|                |              |          |         |         | postgres=CTc/postgres |
| template1      | postgres     | UTF8     | C.UTF-8 | C.UTF-8 | =c/postgres          +|
|                |              |          |         |         | postgres=CTc/postgres |
+----------------+--------------+----------+---------+---------+-----------------------+
(4 rows)



It worked. Your new database is there. If you don't get a message after entering a command, it means it's incomplete and you likely forgot the semi-colon. You can just add it on the next line and press enter to finish the command. Create another database named second_database.

postgres=> CREATE DATABASE second_database;

postgres=> \l
postgres=>                                     List of databases
+-----------------+--------------+----------+---------+---------+-----------------------+
|      Name       |    Owner     | Encoding | Collate |  Ctype  |   Access privileges   |
+-----------------+--------------+----------+---------+---------+-----------------------+
| first_database  | freecodecamp | UTF8     | C.UTF-8 | C.UTF-8 |                       |
| postgres        | postgres     | UTF8     | C.UTF-8 | C.UTF-8 |                       |
| second_database | freecodecamp | UTF8     | C.UTF-8 | C.UTF-8 |                       |
| template0       | postgres     | UTF8     | C.UTF-8 | C.UTF-8 | =c/postgres          +|
|                 |              |          |         |         | postgres=CTc/postgres |
| template1       | postgres     | UTF8     | C.UTF-8 | C.UTF-8 | =c/postgres          +|
|                 |              |          |         |         | postgres=CTc/postgres |
+-----------------+--------------+----------+---------+---------+-----------------------+
(5 rows)


You can connect to a database by entering \c database_name. You need to connect to add information. Connect to your second_database.

postgres=> \c second_database;
You are now connected to database "second_database" as user "freecodecamp".

You should see a message that you are connected. Notice that the prompt changed to second_database=>. So the postgres=> prompt before must have meant you were connected to that database. A database is made of tables that hold your data. Enter \d to display the tables.

second_database=> \d
Did not find any relations.


Looks like there's no tables or relations yet. Similar to how you created a database, you can create a table like this:

CREATE TABLE table_name();
Note that the parenthesis are needed for this one. It will create the table in the database you are connected to. Create a table named first_table in second_database.

second_database=> CREATE TABLE first_table();
second_database=> 


View the tables in second_database again with the display command. You should see your new table there with a little meta data about it.
second_database=> \d
second_database=>                List of relations
+--------+-------------+-------+--------------+
| Schema |    Name     | Type  |    Owner     |
+--------+-------------+-------+--------------+
| public | first_table | table | freecodecamp |
+--------+-------------+-------+--------------+
(1 row)


Create another new table in this database. Give it a name of second_table.
second_database=> CREATE TABLE second_table();

There should be two tables in this database now. Display them again to make sure.

1. Use the display shortcut command

2. Enter \d into the prompt
3. Enter psql --username=freecodecamp --dbname=second_database into the terminal to log in if you aren't already

second_database=> \d
second_database=> 
               List of relations
+--------+--------------+-------+--------------+
| Schema |     Name     | Type  |    Owner     |
+--------+--------------+-------+--------------+
| public | first_table  | table | freecodecamp |
| public | second_table | table | freecodecamp |
+--------+--------------+-------+--------------+
(2 rows)


You can view more details about a table by adding the table name after the display command like this: \d table_name. View more details about your second_table.

**Had to restart**
postgres=> DROP DATABASE database_name;
postgres=> DROP DATABASE
\l
postgres=>                                     List of databases
+-----------------+--------------+----------+---------+---------+-----------------------+
|      Name       |    Owner     | Encoding | Collate |  Ctype  |   Access privileges   |
+-----------------+--------------+----------+---------+---------+-----------------------+
| first_database  | freecodecamp | UTF8     | C.UTF-8 | C.UTF-8 |                       |
| postgres        | postgres     | UTF8     | C.UTF-8 | C.UTF-8 |                       |
| second_database | freecodecamp | UTF8     | C.UTF-8 | C.UTF-8 |                       |
| template0       | postgres     | UTF8     | C.UTF-8 | C.UTF-8 | =c/postgres          +|
|                 |              |          |         |         | postgres=CTc/postgres |
| template1       | postgres     | UTF8     | C.UTF-8 | C.UTF-8 | =c/postgres          +|
|                 |              |          |         |         | postgres=CTc/postgres |
+-----------------+--------------+----------+---------+---------+-----------------------+
(5 rows)


postgres=> \c second_database;
You are now connected to database "second_database" as user "freecodecamp".
second_database=> \d
second_database=>                List of relations
+--------+--------------+-------+--------------+
| Schema |     Name     | Type  |    Owner     |
+--------+--------------+-------+--------------+
| public | first_table  | table | freecodecamp |
| public | second_table | table | freecodecamp |
+--------+--------------+-------+--------------+
(2 rows)
**continue**

second_database=> \d second_table
second_database=>            Table "public.second_table"
+--------+------+-----------+----------+---------+
| Column | Type | Collation | Nullable | Default |
+--------+------+-----------+----------+---------+
+--------+------+-----------+----------+---------+


Tables need columns to describe the data in them, yours doesn't have any yet. Here's an example of how to add one:

ALTER TABLE table_name ADD COLUMN column_name DATATYPE;
Add a column to second_table named first_column. Give it a data type of INT. INT stands for integer. Don't forget the semi-colon. 😄

second_database=> ALTER TABLE second_table  ADD COLUMN first_column INT;
second_database=> ALTER TABLE


Looks like it worked. Display the details of second_table again to see if your new column is there.

second_database=> ALTER TABLE second_table  ADD COLUMN first_column INT;
second_database=> ALTER TABLE

second_database=> \d second_table
second_database=>                 Table "public.second_table"
+--------------+---------+-----------+----------+---------+
|    Column    |  Type   | Collation | Nullable | Default |
+--------------+---------+-----------+----------+---------+
| first_column | integer |           |          |         |
+--------------+---------+-----------+----------+---------+


Your column is there 😄 Use ALTER TABLE and ADD COLUMN to add another column to second_table named id that's a type of INT.

second_database=> ALTER TABLE second_table ADD COLUMN id INT;
second_database=> ALTER TABLE

Your table should have an id column added. View the details of second_table to make sure.

second_database=> \d second_table
second_database=>                 Table "public.second_table"
+--------------+---------+-----------+----------+---------+
|    Column    |  Type   | Collation | Nullable | Default |
+--------------+---------+-----------+----------+---------+
| first_column | integer |           |          |         |
| id           | integer |           |          |         |
+--------------+---------+-----------+----------+---------+


second_database=> 


Add another column to second_table named age. Give it a data type of INT.

second_database=> ALTER TABLE second_table ADD COLUMN age INT;
ALTER TABLE
second_database=> 

Take a look at the details of second_table again.

second_database=> \d second_table
second_database=>                 Table "public.second_table"
+--------------+---------+-----------+----------+---------+
|    Column    |  Type   | Collation | Nullable | Default |
+--------------+---------+-----------+----------+---------+
| first_column | integer |           |          |         |
| id           | integer |           |          |         |
| age          | integer |           |          |         |
+--------------+---------+-----------+----------+---------+


second_database=> 

Those are some good looking columns. You will probably need to know how to remove them. Here's an example:

ALTER TABLE table_name DROP COLUMN column_name;
Drop your age column.

second_database=> ALTER TABLE second_table DROP COLUMN age;
second_database=> ALTER TABLE

second_database=> 


View the details of second_table to see if it's gone.

second_database=> \d second_table
second_database=>                 Table "public.second_table"
+--------------+---------+-----------+----------+---------+
|    Column    |  Type   | Collation | Nullable | Default |
+--------------+---------+-----------+----------+---------+
| first_column | integer |           |          |         |
| id           | integer |           |          |         |
+--------------+---------+-----------+----------+---------+


second_database=>


It's gone. Use the ALTER TABLE and DROP COLUMN keywords again to drop first_column.


second_database=> ALTER TABLE second_table DROP COLUMN first_column;
second_database=> 



A common data type is VARCHAR. It's a short string of characters. You need to give it a maximum length when using it like this: VARCHAR(30).

Add a new column to second_table, give it a name of name and a data type of VARCHAR(30).

second_database=> ALTER TABLE second_table ADD COLUMN name VARCHAR(30);
second_database=> 


Take a look at the details of second_table to see your columns.

second_database=> \d second_table

You can see the VARCHAR type there. The 30 means the data in it can be a max of 30 characters. You named that column name, it should have been username. Here's how you can rename a column:

ALTER TABLE table_name RENAME COLUMN column_name TO new_name;
Rename the name column to username.


second_database=> ALTER TABLE second_table RENAME COLUMN name TO username;

see details of the table

second_database=> \d second_table


It worked. Rows are the actual data in the table. You can add one like this:

INSERT INTO table_name(column_1, column_2) VALUES(value1, value2);
Insert a row into second_table. Give it an id of 1, and a username of Samus. The username column expects a VARCHAR, so you need to put Samus in single quotes like this: 'Samus'.

second_database=> \d second_table
second_database=>                      Table "public.second_table"
+----------+-----------------------+-----------+----------+---------+
|  Column  |         Type          | Collation | Nullable | Default |
+----------+-----------------------+-----------+----------+---------+
| id       | integer               |           |          |         |
| username | character varying(30) |           |          |         |
+----------+-----------------------+-----------+----------+---------+

second_database=> INSERT INTO second_table(id, username) VALUES(1, 'Samus');
second_database=> INSERT 0 1

second_database=> 

You should have one row in your table. You can view the data in a table by querying it with the SELECT statement. Here's how it looks:

SELECT columns FROM table_name;
Use a SELECT statement to view all the columns in second_table. Use an asterisk (*) to denote that you want to see all the columns.

second_database=> SELECT * FROM second_table;
second_database=>          
+----+----------+
| id | username |
+----+----------+
|  1 | Samus    |
+----+----------+
(1 row)


second_database=> 


There's your one row. Insert another row into second_table. Fill in the id and username columns with the values 2 and 'Mario'.

second_database=> INSERT INTO second_table(id, username) VALUES(2, 'Mario');
second_database=> INSERT 0 1

second_database=> 

You should now have two rows in the table. Use SELECT again to view all the columns and rows from second_table.

second_database=> SELECT * FROM second_table;
second_database=>          
+----+----------+
| id | username |
+----+----------+
|  1 | Samus    |
|  2 | Mario    |
+----+----------+
(2 rows)


second_database=> 


Insert another row into second_table. Use 3 as the id, and Luigi as the username this time.

second_database=> INSERT INTO second_table(id, username) VALUES(3, 'Luigi');
second_database=> INSERT 0 1

second_database=> 

You should now have three rows. Use SELECT again to see all the data you entered.

second_database=> SELECT * FROM second_table;
         
+----+----------+
| id | username |
+----+----------+
|  1 | Samus    |
|  2 | Mario    |
|  3 | Luigi    |
+----+----------+
(3 rows)

second_database=> 

That gives me an idea ?? You can make a database of Mario video game characters. You should start from scratch for it. Why don't you delete the record you just entered. Here's an example of how to delete a row:

DELETE FROM table_name WHERE condition;
Remove Luigi from your table. The condition you want to use is username='Luigi'.

second_database=> DELETE FROM second_table WHERE username='Luigi';
DELETE 1
second_database=> 

Luigi should be gone. Use SELECT again to see all the data and make sure he's not there.


second_database=> SELECT * FROM second_table;
         
+----+----------+
| id | username |
+----+----------+
|  1 | Samus    |
|  2 | Mario    |
+----+----------+
(2 rows)

second_database=> 

It's gone. You can scrap all this for the new database. Delete Mario from second_table using the same command as before, except make the condition username='Mario' this time.

second_database=> DELETE FROM second_table WHERE username='Mario';
second_database=> DELETE 1

second_database=> 

delete Samus

second_database=> DELETE FROM second_table WHERE username='Samus';
second_database=> DELETE 1

second_database=> 


Use SELECT again to see all the rows in second_table to make sure they're gone.

second_database=> SELECT * FROM second_table;
         
+----+----------+
| id | username |
+----+----------+
+----+----------+
(0 rows)

second_database=> 


Looks like they're all gone. Remind yourself what columns you have in second_table by looking at its details.

second_database=> \d second_table
second_database=>                      Table "public.second_table"
+----------+-----------------------+-----------+----------+---------+
|  Column  |         Type          | Collation | Nullable | Default |
+----------+-----------------------+-----------+----------+---------+
| id       | integer               |           |          |         |
| username | character varying(30) |           |          |         |
+----------+-----------------------+-----------+----------+---------+


second_database=> 

There's two columns. You won't need either of them for the Mario database. Alter the table second_table and drop the column username.

second_database=> ALTER TABLE second_table DROP COLUMN username;
second_database=> ALTER TABLE

second_database=> 

Next, drop the id column.

second_database=> ALTER TABLE second_table DROP COLUMN id;
second_database=> ALTER TABLE

second_database=> 


Okay, the table has no rows or columns left. View the tables in this database to see what is here.

\d
second_database=>                List of relations
+--------+--------------+-------+--------------+
| Schema |     Name     | Type  |    Owner     |
+--------+--------------+-------+--------------+
| public | first_table  | table | freecodecamp |
| public | second_table | table | freecodecamp |
+--------+--------------+-------+--------------+
(2 rows)


Still two. You won't need either of those for the new database either. Drop second_table from your database. Here's an example:

DROP TABLE table_name;

second_database=> DROP TABLE second_table;
DROP TABLE
second_database=> 

Next, drop first_table from the database.

second_database=> DROP TABLE first_table;
second_database=> DROP TABLE

second_database=> 


All the tables are gone now, too. View all the databases using the command to list them.

second_database=> \l
second_database=>                                     List of databases
+-----------------+--------------+----------+---------+---------+-----------------------+
|      Name       |    Owner     | Encoding | Collate |  Ctype  |   Access privileges   |
+-----------------+--------------+----------+---------+---------+-----------------------+
| first_database  | freecodecamp | UTF8     | C.UTF-8 | C.UTF-8 |                       |
| postgres        | postgres     | UTF8     | C.UTF-8 | C.UTF-8 |                       |
| second_database | freecodecamp | UTF8     | C.UTF-8 | C.UTF-8 |                       |
| template0       | postgres     | UTF8     | C.UTF-8 | C.UTF-8 | =c/postgres          +|
|                 |              |          |         |         | postgres=CTc/postgres |
| template1       | postgres     | UTF8     | C.UTF-8 | C.UTF-8 | =c/postgres          +|
|                 |              |          |         |         | postgres=CTc/postgres |
+-----------------+--------------+----------+---------+---------+-----------------------+
(5 rows)


second_database=> 


Rename first_database to mario_database. You can rename a database like this:

ALTER DATABASE database_name RENAME TO new_database_name;


second_database=> ALTER DATABASE first_database RENAME TO mario_database;
second_database=> ALTER DATABASE

second_database=> 



List the databases to make sure it got renamed.

second_database=> \l
                                    List of databases
+-----------------+--------------+----------+---------+---------+-----------------------+
|      Name       |    Owner     | Encoding | Collate |  Ctype  |   Access privileges   |
+-----------------+--------------+----------+---------+---------+-----------------------+
| mario_database  | freecodecamp | UTF8     | C.UTF-8 | C.UTF-8 |                       |
| postgres        | postgres     | UTF8     | C.UTF-8 | C.UTF-8 |                       |
| second_database | freecodecamp | UTF8     | C.UTF-8 | C.UTF-8 |                       |
| template0       | postgres     | UTF8     | C.UTF-8 | C.UTF-8 | =c/postgres          +|
|                 |              |          |         |         | postgres=CTc/postgres |
| template1       | postgres     | UTF8     | C.UTF-8 | C.UTF-8 | =c/postgres          +|
|                 |              |          |         |         | postgres=CTc/postgres |
+-----------------+--------------+----------+---------+---------+-----------------------+
(5 rows)

second_database=> 

Connect to your newly named database so you can start adding your characters.

second_database=> \c mario_database;
You are now connected to database "mario_database" as user "freecodecamp".

Now that you aren't connected to second_database, you can drop it. Use the DROP DATABASE keywords to do that


mario_database=> DROP DATABASE second_database;
mario_database=> DROP DATABASE


List the databases again to make sure it's gone.

mario_database=> \l
mario_database=>                                    List of databases
+----------------+--------------+----------+---------+---------+-----------------------+
|      Name      |    Owner     | Encoding | Collate |  Ctype  |   Access privileges   |
+----------------+--------------+----------+---------+---------+-----------------------+
| mario_database | freecodecamp | UTF8     | C.UTF-8 | C.UTF-8 |                       |
| postgres       | postgres     | UTF8     | C.UTF-8 | C.UTF-8 |                       |
| template0      | postgres     | UTF8     | C.UTF-8 | C.UTF-8 | =c/postgres          +|
|                |              |          |         |         | postgres=CTc/postgres |
| template1      | postgres     | UTF8     | C.UTF-8 | C.UTF-8 | =c/postgres          +|
|                |              |          |         |         | postgres=CTc/postgres |
+----------------+--------------+----------+---------+---------+-----------------------+
(4 rows)

Okay, I think you're ready to get started. I don't think you created any tables here, take a look to make sure.

\d


Create a new table named characters, it will hold some basic information about Mario characters.

mario_database=> CREATE TABLE characters();
mario_database=> CREATE TABLE

mario_database=> 

Next, you can add some columns to the table. Add a column named character_id to your new table that is a type of SERIAL.


mario_database=> ALTER TABLE characters ADD COLUMN character_id SERIAL;
mario_database=> ALTER TABLE


The SERIAL type will make your column an INT with a NOT NULL constraint, and automatically increment the integer when a new row is added. View the details of the characters table to see what SERIAL did for you.

mario_database=> \d characters
mario_database=>                                      Table "public.characters"
+--------------+---------+-----------+----------+--------------------------------------------------+
|    Column    |  Type   | Collation | Nullable |                     Default                      |
+--------------+---------+-----------+----------+--------------------------------------------------+
| character_id | integer |           | not null | nextval('characters_character_id_seq'::regclass) |
+--------------+---------+-----------+----------+--------------------------------------------------+


mario_database=> 

codeally@7609b683a5eb:~/project$ psql --username=freecodecamp --dbname=postgres
Border style is 2.
Title is " ".
Pager usage is off.
psql (12.9 (Ubuntu 12.9-2.pgdg20.04+1))
Type "help" for help.

postgres=> \l
                                   List of databases
+----------------+--------------+----------+---------+---------+-----------------------+
|      Name      |    Owner     | Encoding | Collate |  Ctype  |   Access privileges   |
+----------------+--------------+----------+---------+---------+-----------------------+
| mario_database | freecodecamp | UTF8     | C.UTF-8 | C.UTF-8 |                       |
| postgres       | postgres     | UTF8     | C.UTF-8 | C.UTF-8 |                       |
| template0      | postgres     | UTF8     | C.UTF-8 | C.UTF-8 | =c/postgres          +|
|                |              |          |         |         | postgres=CTc/postgres |
| template1      | postgres     | UTF8     | C.UTF-8 | C.UTF-8 | =c/postgres          +|
|                |              |          |         |         | postgres=CTc/postgres |
+----------------+--------------+----------+---------+---------+-----------------------+
(4 rows)

postgres=> \c mario_database 
You are now connected to database "mario_database" as user "freecodecamp".
mario_database=> \d
mario_database=>                         List of relations
+--------+-----------------------------+----------+--------------+
| Schema |            Name             |   Type   |    Owner     |
+--------+-----------------------------+----------+--------------+
| public | characters                  | table    | freecodecamp |
| public | characters_character_id_seq | sequence | freecodecamp |
+--------+-----------------------------+----------+--------------+
(2 rows)


mario_database=> \d characters
                                     Table "public.characters"
+--------------+---------+-----------+----------+--------------------------------------------------+
|    Column    |  Type   | Collation | Nullable |                     Default                      |
+--------------+---------+-----------+----------+--------------------------------------------------+
| character_id | integer |           | not null | nextval('characters_character_id_seq'::regclass) |
+--------------+---------+-----------+----------+--------------------------------------------------+

mario_database=> \d characters_character_id_seq 
mario_database=>              Sequence "public.characters_character_id_seq"
+---------+-------+---------+------------+-----------+---------+-------+
|  Type   | Start | Minimum |  Maximum   | Increment | Cycles? | Cache |
+---------+-------+---------+------------+-----------+---------+-------+
| integer |     1 |       1 | 2147483647 |         1 | no      |     1 |
+---------+-------+---------+------------+-----------+---------+-------+
Owned by: public.characters.character_id


mario_database=>

Add a column to characters called name. Give it a data type of VARCHAR(30), and a constraint of NOT NULL. Add a constraint by putting it right after the data type.

mario_database=> ALTER TABLE characters ADD COLUMN name VARCHAR(30) NOT NULL;
mario_database=> ALTER TABLE

mario_database=> 

You can make another column for where they are from. Add another column named homeland. Give it a data type of VARCHAR that has a max length of 60.

mario_database=> ALTER TABLE characters ADD COLUMN homeland VARCHAR(60);
ALTER TABLE
mario_database=> 


Video game characters are quite colorful. Add one more column named favorite_color. Make it a VARCHAR with a max length of 30.

mario_database=> ALTER TABLE characters ADD COLUMN favorite_color VARCHAR(30);
mario_database=> ALTER TABLE

mario_database=> 

You should have four columns in characters. Take a look at the details of it to see how things are going.

mario_database=> \d characters
mario_database=>                                              Table "public.characters"
+----------------+-----------------------+-----------+----------+--------------------------------------------------+
|     Column     |         Type          | Collation | Nullable |                     Default                      |
+----------------+-----------------------+-----------+----------+--------------------------------------------------+
| character_id   | integer               |           | not null | nextval('characters_character_id_seq'::regclass) |
| name           | character varying(30) |           | not null |                                                  |
| homeland       | character varying(60) |           |          |                                                  |
| favorite_color | character varying(30) |           |          |                                                  |
+----------------+-----------------------+-----------+----------+--------------------------------------------------+


mario_database=> 


You are ready to start adding some rows. First is Mario. Earlier, you used this command to add a row:

INSERT INTO second_table(id, username) VALUES(1, 'Samus');
The first parenthesis is for the column names, you can put as many columns as you want. The second parenthesis is for the values for those columns. Add a row to your table, give it a name of Mario, a homeland of Mushroom Kingdom, and a favorite_color of Red. Make sure to use single quotes where needed.

mario_database=> INSERT INTO characters(name, homeland, favorite_color) VALUES('Mario', 'Mushroom Kingdom', 'Red');
mario_database=> INSERT 0 1

mario_database=> 


Mario should have a row now and his character_id should have been automatically added. View all the data in your characters table with SELECT to see this.

mario_database=> SELECT * FROM characters;
                              
+--------------+-------+------------------+----------------+
| character_id | name  |     homeland     | favorite_color |
+--------------+-------+------------------+----------------+
|            1 | Mario | Mushroom Kingdom | Red            |
+--------------+-------+------------------+----------------+
(1 row)

mario_database=> 

Add another row for Luigi. Give it a name of Luigi, a homeland of Mushroom Kingdom, and a favorite_color of Green.

mario_database=> INSERT INTO characters(name, homeland, favorite_color) VALUES('luigi', 'Mushroom Kingdom', 'Green');
INSERT 0 1
mario_database=> \d characters
                                             Table "public.characters"
+----------------+-----------------------+-----------+----------+--------------------------------------------------+
|     Column     |         Type          | Collation | Nullable |                     Default                      |
+----------------+-----------------------+-----------+----------+--------------------------------------------------+
| character_id   | integer               |           | not null | nextval('characters_character_id_seq'::regclass) |
| name           | character varying(30) |           | not null |                                                  |
| homeland       | character varying(60) |           |          |                                                  |
| favorite_color | character varying(30) |           |          |                                                  |
+----------------+-----------------------+-----------+----------+--------------------------------------------------+


mario_database=> SELECT * FROM characters;
                              
+--------------+-------+------------------+----------------+
| character_id | name  |     homeland     | favorite_color |
+--------------+-------+------------------+----------------+
|            1 | Mario | Mushroom Kingdom | Red            |
|            2 | luigi | Mushroom Kingdom | Green          |
+--------------+-------+------------------+----------------+
(2 rows)

mario_database=> DELETE FROM characters WHERE name='luigi';
mario_database=> DELETE 1

mario_database=> SELECT * FROM characters;
mario_database=>                               
+--------------+-------+------------------+----------------+
| character_id | name  |     homeland     | favorite_color |
+--------------+-------+------------------+----------------+
|            1 | Mario | Mushroom Kingdom | Red            |
+--------------+-------+------------------+----------------+
(1 row)


mario_database=> INSERT INTO characters(name, homeland, favorite_color) VALUES('Luigi', 'Mushroom Kingdom', 'Green');
INSERT 0 1
mario_database=> 



View all the data in your characters table with SELECT again.

mario_database=> SELECT * FROM characters;
mario_database=>                               
+--------------+-------+------------------+----------------+
| character_id | name  |     homeland     | favorite_color |
+--------------+-------+------------------+----------------+
|            1 | Mario | Mushroom Kingdom | Red            |
|            3 | Luigi | Mushroom Kingdom | Green          |
+--------------+-------+------------------+----------------+
(2 rows)


mario_database=> 

Okay, it looks like it's all working. Add another row for Peach. Give her the values: Peach, Mushroom Kingdom, and Pink.

mario_database=> INSERT INTO characters(name, homeland, favorite_color) VALUES('Peach', 'Mushroom Kingdom', 'Pink');
mario_database=> INSERT 0 1

mario_database=>


Adding rows one at a time is quite tedious. Here's an example of how you could have added the previous three rows at once:

INSERT INTO characters(name, homeland, favorite_color)
VALUES('Mario', 'Mushroom Kingdom', 'Red'),
('Luigi', 'Mushroom Kingdom', 'Green'),
('Peach', 'Mushroom Kingdom', 'Pink');
Add two more rows. Give the first one the values: Toadstool, Mushroom Kingdom, and Red. Give the second one: Bowser, Mushroom Kingdom, and Green. Try to add them with one command.

mario_database=> INSERT INTO characters(name, homeland, favorite_color)
mario_database-> VALUES('Toadstool', 'Mushroom Kingdom', 'Red'),
mario_database-> ('Bowser', 'Mushroom Kingdom', 'Green');
INSERT 0 2
mario_database=> 


If you don't get a message after a command, it is likely incomplete. This is because you can put a command on multiple lines. Add two more rows. Give the first one the values: Daisy, Sarasaland, and Yellow. The second: Yoshi, Dinosaur Land, and Green. Try to do it with one command.

mario_database=> INSERT INTO characters(name, homeland, favorite_color)
VALUES('Daisy', 'Sarasaland', 'Yellow'),
('Yoshi', 'Dinosaur', 'Green');
INSERT 0 2
mario_database=> INSERT INTO characters(name, homeland, favorite_color)
mario_database-> VALUES('Daisy', 'Sarasaland', 'Yellow'),
mario_database-> ('Yoshi', 'Dinosaur Land', 'Green');
mario_database=> INSERT 0 2

mario_database=> SELECT * FROM characters;
                                
+--------------+-----------+------------------+----------------+
| character_id |   name    |     homeland     | favorite_color |
+--------------+-----------+------------------+----------------+
|            1 | Mario     | Mushroom Kingdom | Red            |
|            2 | Luigi     | Mushroom Kingdom | Green          |
|            3 | Peach     | Mushroom Kingdom | Pink           |
|            4 | Toadstool | Mushroom Kingdom | Red            |
|            5 | Bowser    | Mushroom Kingdom | Green          |
|            6 | Daisy     | Sarasaland       | Yellow         |
|            7 | Yoshi     | Dinosaur         | Green          |
|            8 | Daisy     | Sarasaland       | Yellow         |
|            9 | Yoshi     | Dinosaur Land    | Green          |
+--------------+-----------+------------------+----------------+
(9 rows)

mario_database=> DELETE FROM characters WHERE homeland='Dinosaur' AND character_id='6';
mario_database=> DELETE 0

mario_database=> SELECT * FROM characters;
mario_database=>                                 
+--------------+-----------+------------------+----------------+
| character_id |   name    |     homeland     | favorite_color |
+--------------+-----------+------------------+----------------+
|            1 | Mario     | Mushroom Kingdom | Red            |
|            2 | Luigi     | Mushroom Kingdom | Green          |
|            3 | Peach     | Mushroom Kingdom | Pink           |
|            4 | Toadstool | Mushroom Kingdom | Red            |
|            5 | Bowser    | Mushroom Kingdom | Green          |
|            6 | Daisy     | Sarasaland       | Yellow         |
|            7 | Yoshi     | Dinosaur         | Green          |
|            8 | Daisy     | Sarasaland       | Yellow         |
|            9 | Yoshi     | Dinosaur Land    | Green          |
+--------------+-----------+------------------+----------------+
(9 rows)


mario_database=> DELETE FROM characters WHERE homeland='Dinosaur';
mario_database=> DELETE 1
SELECT * FROM characters;
                                
+--------------+-----------+------------------+----------------+
| character_id |   name    |     homeland     | favorite_color |
+--------------+-----------+------------------+----------------+
|            1 | Mario     | Mushroom Kingdom | Red            |
|            2 | Luigi     | Mushroom Kingdom | Green          |
|            3 | Peach     | Mushroom Kingdom | Pink           |
|            4 | Toadstool | Mushroom Kingdom | Red            |
|            5 | Bowser    | Mushroom Kingdom | Green          |
|            6 | Daisy     | Sarasaland       | Yellow         |
|            8 | Daisy     | Sarasaland       | Yellow         |
|            9 | Yoshi     | Dinosaur Land    | Green          |
+--------------+-----------+------------------+----------------+
(8 rows)

mario_database=> DELETE FROM characters WHERE character_id=6;
mario_database=> DELETE 1

mario_database=> SELECT * FROM characters;
                                
+--------------+-----------+------------------+----------------+
| character_id |   name    |     homeland     | favorite_color |
+--------------+-----------+------------------+----------------+
|            1 | Mario     | Mushroom Kingdom | Red            |
|            2 | Luigi     | Mushroom Kingdom | Green          |
|            3 | Peach     | Mushroom Kingdom | Pink           |
|            4 | Toadstool | Mushroom Kingdom | Red            |
|            5 | Bowser    | Mushroom Kingdom | Green          |
|            8 | Daisy     | Sarasaland       | Yellow         |
|            9 | Yoshi     | Dinosaur Land    | Green          |
+--------------+-----------+------------------+----------------+
(7 rows)

mario_database=> ^C
mario_database=> 

Take a look at all the data in your table with SELECT to see where you stand.

mario_database=> SELECT * FROM characters;
mario_database=> 


It looks good, but there's a few mistakes. You can change a value like this:

UPDATE table_name SET column_name=new_value WHERE condition;
You used username='Samus' as a condition earlier. SET Daisy's favorite_color to Orange. You can use the condition name='Daisy' to change her row.

mario_database=> UPDATE characters SET favorite_color='Orange' WHERE name='Daisy';
mario_database=> UPDATE 1

mario_database=> 


The command you just used does exactly what it sounds like. It finds the row where name is Daisy, and sets her favorite_color to Orange. Take a look at all the data in your table again to see if she got updated.

mario_database=> SELECT * FROM characters;
mario_database=>                                 
+--------------+-----------+------------------+----------------+
| character_id |   name    |     homeland     | favorite_color |
+--------------+-----------+------------------+----------------+
|            1 | Mario     | Mushroom Kingdom | Red            |
|            2 | Luigi     | Mushroom Kingdom | Green          |
|            3 | Peach     | Mushroom Kingdom | Pink           |
|            4 | Toadstool | Mushroom Kingdom | Red            |
|            5 | Bowser    | Mushroom Kingdom | Green          |
|            7 | Yoshi     | Dinosaur Land    | Green          |
|            6 | Daisy     | Sarasaland       | Orange         |
+--------------+-----------+------------------+----------------+
(7 rows)


mario_database=>

Her favorite color was updated. Toadstool's name is wrong as well, it's actually Toad. Use UPDATE to SET his name to Toad. Use the condition favorite_color='Red'.


mario_database=> UPDATE characters SET name='Toad' WHERE favorite_color='Red';
UPDATE 2
mario_database=> 


Take a look at all the data in your table.

mario_database=> SELECT * FROM characters;
mario_database=>                                
+--------------+--------+------------------+----------------+
| character_id |  name  |     homeland     | favorite_color |
+--------------+--------+------------------+----------------+
|            2 | Luigi  | Mushroom Kingdom | Green          |
|            3 | Peach  | Mushroom Kingdom | Pink           |
|            5 | Bowser | Mushroom Kingdom | Green          |
|            7 | Yoshi  | Dinosaur Land    | Green          |
|            6 | Daisy  | Sarasaland       | Orange         |
|            1 | Toad   | Mushroom Kingdom | Red            |
|            4 | Toad   | Mushroom Kingdom | Red            |
+--------------+--------+------------------+----------------+
(7 rows)


mario_database=> 


Using favorite_color='Red' was not a good idea. Mario's name changed to Toad because he likes red, and now there's two rows that are the same. Well, almost. Only the character_id is different. You will have to use that to change it back to Mario. Use UPDATE to set the name to Mario for the row with the lowest character_id.

mario_database=> UPDATE characters SET name='Mario' WHERE character_id=1;
mario_database=> UPDATE 1


Take a look at all the data in your table again to see if Mario's name got changed back.

mario_database=> SELECT * FROM characters;
                               
+--------------+--------+------------------+----------------+
| character_id |  name  |     homeland     | favorite_color |
+--------------+--------+------------------+----------------+
|            2 | Luigi  | Mushroom Kingdom | Green          |
|            3 | Peach  | Mushroom Kingdom | Pink           |
|            5 | Bowser | Mushroom Kingdom | Green          |
|            7 | Yoshi  | Dinosaur Land    | Green          |
|            6 | Daisy  | Sarasaland       | Orange         |
|            4 | Toad   | Mushroom Kingdom | Red            |
|            1 | Mario  | Mushroom Kingdom | Red            |
+--------------+--------+------------------+----------------+
(7 rows)

mario_database=> 

Looks like it worked. Toad's favorite color is wrong. He likes blue. Change Toad's favorite color to Blue. Use whatever condition you want, but don't change any of the other rows.


mario_database=> UPDATE characters SET favorite_color='Blue' WHERE name='Toad';
mario_database=> UPDATE 1

mario_database=> 

Bowser's favorite_color is wrong. He likes Yellow. Why don't you update it without changing any of the other rows?

mario_database=> UPDATE characters SET homeland='Koopa Kingdom' WHERE name='Bowser';
mario_database=> UPDATE 1

mario_database=> 

Take a look at all the data in your table again to make sure there's no more issues.

mario_database=> SELECT * FROM characters;
mario_database=>                                
+--------------+--------+------------------+----------------+
| character_id |  name  |     homeland     | favorite_color |
+--------------+--------+------------------+----------------+
|            2 | Luigi  | Mushroom Kingdom | Green          |
|            3 | Peach  | Mushroom Kingdom | Pink           |
|            7 | Yoshi  | Dinosaur Land    | Green          |
|            6 | Daisy  | Sarasaland       | Orange         |
|            1 | Mario  | Mushroom Kingdom | Red            |
|            4 | Toad   | Mushroom Kingdom | Blue           |
|            5 | Bowser | Koopa Kingdom    | Yellow         |
+--------------+--------+------------------+----------------+
(7 rows)


Actually, you should put that in order. Here's an example:

SELECT columns FROM table_name ORDER BY column_name;
View all the data again, but put it in order by character_id.




mario_database=> 
mario_database=> SELECT columns FROM characters ORDER BY character_id;
ERROR:  column "columns" does not exist
LINE 1: SELECT columns FROM characters ORDER BY character_id;
               ^
mario_database=> SELECT * FROM characters ORDER BY character_id;
mario_database=>                                
+--------------+--------+------------------+----------------+
| character_id |  name  |     homeland     | favorite_color |
+--------------+--------+------------------+----------------+
|            1 | Mario  | Mushroom Kingdom | Red            |
|            2 | Luigi  | Mushroom Kingdom | Green          |
|            3 | Peach  | Mushroom Kingdom | Pink           |
|            4 | Toad   | Mushroom Kingdom | Blue           |
|            5 | Bowser | Koopa Kingdom    | Yellow         |
|            6 | Daisy  | Sarasaland       | Orange         |
|            7 | Yoshi  | Dinosaur Land    | Green          |
+--------------+--------+------------------+----------------+
(7 rows)


mario_database=> 

It looks good. Next, you are going to add a primary key. It's a column that uniquely identifies each row in the table. Here's an example of how to set a PRIMARY KEY:

ALTER TABLE table_name ADD PRIMARY KEY(column_name);
The name column is pretty unique, why don't you set that as the primary key for this table.


mario_database=> ALTER TABLE characters ADD PRIMARY KEY(name);
ALTER TABLE
mario_database=> 


You should set a primary key on every table and there can only be one per table. Take a look at the details of your characters table to see the primary key at the bottom.

mario_database=> \d characters
mario_database=>                                              Table "public.characters"
+----------------+-----------------------+-----------+----------+--------------------------------------------------+
|     Column     |         Type          | Collation | Nullable |                     Default                      |
+----------------+-----------------------+-----------+----------+--------------------------------------------------+
| character_id   | integer               |           | not null | nextval('characters_character_id_seq'::regclass) |
| name           | character varying(30) |           | not null |                                                  |
| homeland       | character varying(60) |           |          |                                                  |
| favorite_color | character varying(30) |           |          |                                                  |
+----------------+-----------------------+-----------+----------+--------------------------------------------------+
Indexes:
    "characters_pkey" PRIMARY KEY, btree (name)


mario_database=> 


You can see the key for your name column at the bottom. It would have been better to use character_id for the primary key. Here's an example of how to drop a constraint:

ALTER TABLE table_name DROP CONSTRAINT constraint_name;
Drop the primary key on the name column. You can see the constraint name is characters_pkey.

mario_database=> ALTER TABLE characters DROP CONSTRAINT characters_pkey;
mario_database=> ALTER TABLE

mario_database=> 


View the details of the characters table to make sure it's gone.

mario_database=> SELECT * FROM characters;
                               
+--------------+--------+------------------+----------------+
| character_id |  name  |     homeland     | favorite_color |
+--------------+--------+------------------+----------------+
|            2 | Luigi  | Mushroom Kingdom | Green          |
|            3 | Peach  | Mushroom Kingdom | Pink           |
|            7 | Yoshi  | Dinosaur Land    | Green          |
|            6 | Daisy  | Sarasaland       | Orange         |
|            1 | Mario  | Mushroom Kingdom | Red            |
|            4 | Toad   | Mushroom Kingdom | Blue           |
|            5 | Bowser | Koopa Kingdom    | Yellow         |
+--------------+--------+------------------+----------------+
(7 rows)

mario_database=> 


It's gone. Set the primary key again, but use the character_id column this time.

mario_database=> ALTER TABLE characters ADD PRIMARY KEY(character_id);
ALTER TABLE
mario_database=> 

View the details of the characters table to see the new primary key.

mario_database=> \d characters
mario_database=>                                              Table "public.characters"
+----------------+-----------------------+-----------+----------+--------------------------------------------------+
|     Column     |         Type          | Collation | Nullable |                     Default                      |
+----------------+-----------------------+-----------+----------+--------------------------------------------------+
| character_id   | integer               |           | not null | nextval('characters_character_id_seq'::regclass) |
| name           | character varying(30) |           | not null |                                                  |
| homeland       | character varying(60) |           |          |                                                  |
| favorite_color | character varying(30) |           |          |                                                  |
+----------------+-----------------------+-----------+----------+--------------------------------------------------+
Indexes:
    "characters_pkey" PRIMARY KEY, btree (character_id)


mario_database=> 

That's better. The table looks complete for now. Next, create a new table named more_info for some extra info about the characters.

mario_database=> CREATE TABLE more_info();
mario_database=> CREATE TABLE

mario_database=> 


View the tables in mario_database again with the display command. You should have two tables now.

mario_database=> \d
mario_database=>                         List of relations
+--------+-----------------------------+----------+--------------+
| Schema |            Name             |   Type   |    Owner     |
+--------+-----------------------------+----------+--------------+
| public | characters                  | table    | freecodecamp |
| public | characters_character_id_seq | sequence | freecodecamp |
| public | more_info                   | table    | freecodecamp |
+--------+-----------------------------+----------+--------------+
(3 rows)


I wonder what that third one is. It says characters_character_id_seq. I think I have a clue. View the details of the characters table.

mario_database=> \d characters
mario_database=>                                              Table "public.characters"
+----------------+-----------------------+-----------+----------+--------------------------------------------------+
|     Column     |         Type          | Collation | Nullable |                     Default                      |
+----------------+-----------------------+-----------+----------+--------------------------------------------------+
| character_id   | integer               |           | not null | nextval('characters_character_id_seq'::regclass) |
| name           | character varying(30) |           | not null |                                                  |
| homeland       | character varying(60) |           |          |                                                  |
| favorite_color | character varying(30) |           |          |                                                  |
+----------------+-----------------------+-----------+----------+--------------------------------------------------+
Indexes:
    "characters_pkey" PRIMARY KEY, btree (character_id)


mario_database=> 


That is what finds the next value for the character_id column. Add a column to your new table named more_info_id. Make it a type of SERIAL.


mario_database=> ALTER TABLE more_info ADD COLUMN more_info_id SERIAL;
mario_database=> ALTER TABLE

mario_database=> 

That is what finds the next value for the character_id column. Add a column to your new table named more_info_id. Make it a type of SERIAL.

Set your new column as the primary key for this table.

mario_database=> ALTER TABLE more_info ADD PRIMARY KEY(more_info_id);
ALTER TABLE
mario_database=> \d more_info
                                     Table "public.more_info"
+--------------+---------+-----------+----------+-------------------------------------------------+
|    Column    |  Type   | Collation | Nullable |                     Default                     |
+--------------+---------+-----------+----------+-------------------------------------------------+
| more_info_id | integer |           | not null | nextval('more_info_more_info_id_seq'::regclass) |
+--------------+---------+-----------+----------+-------------------------------------------------+
Indexes:
    "more_info_pkey" PRIMARY KEY, btree (more_info_id)

mario_database=> 


View the tables in mario_database again with the display command. There should be another sequence there for the more_info_id because it also automatically increments.


mario_database=> \d
mario_database=>                         List of relations
+--------+-----------------------------+----------+--------------+
| Schema |            Name             |   Type   |    Owner     |
+--------+-----------------------------+----------+--------------+
| public | characters                  | table    | freecodecamp |
| public | characters_character_id_seq | sequence | freecodecamp |
| public | more_info                   | table    | freecodecamp |
| public | more_info_more_info_id_seq  | sequence | freecodecamp |
+--------+-----------------------------+----------+--------------+
(4 rows)


mario_database=> 

There it is. Add another column to more_info named birthday. Give it a data type of DATE.

mario_database=> ALTER TABLE more_info ADD column birthday DATE;
mario_database=> ALTER TABLE

mario_database=> 


Add a height column to more_info that's a type of INT.

mario_database=> ALTER TABLE more_info ADD COLUMN height INT;
mario_database=> ALTER TABLE

mario_database=> 

Add a weight column. Give it a type of NUMERIC(4, 1). That data type is for decimals. NUMERIC(4, 1) has up to four digits and one of them has to be to the right of the decimal.

mario_database=> ALTER TABLE more_info ADD COLUMN weight NUMERIC(4, 1);
ALTER TABLE
mario_database=> 



Take a look at the details of more_info to see all your columns.

mario_database=> \d more_info
mario_database=>                                         Table "public.more_info"
+--------------+--------------+-----------+----------+-------------------------------------------------+
|    Column    |     Type     | Collation | Nullable |                     Default                     |
+--------------+--------------+-----------+----------+-------------------------------------------------+
| more_info_id | integer      |           | not null | nextval('more_info_more_info_id_seq'::regclass) |
| birthday     | date         |           |          |                                                 |
| height       | integer      |           |          |                                                 |
| weight       | numeric(4,1) |           |          |                                                 |
+--------------+--------------+-----------+----------+-------------------------------------------------+
Indexes:
    "more_info_pkey" PRIMARY KEY, btree (more_info_id)


mario_database=> 


There’s your four columns and the primary key you created at the bottom. To know what row is for a character, you need to set a foreign key so you can relate rows from this table to rows from your characters table. Here's an example that creates a column as a foreign key:

ALTER TABLE table_name ADD COLUMN column_name DATATYPE REFERENCES referenced_table_name(referenced_column_name);
That's quite the command. In the more_info table, create a character_id column. Make it an INT and a foreign key that references the character_id column from the characters table. Good luck.

mario_database=> ALTER TABLE more_info ADD COLUMN character_id INT REFERENCES characters(character_id);
mario_database=> ALTER TABLE

mario_database=> 


To set a row in more_info for Mario, you just need to set the character_id (foreign key) value to whatever it is in the characters table. Take a look at the details of more_info to see your foreign key.

mario_database=> \d more_info
mario_database=>                                         Table "public.more_info"
+--------------+--------------+-----------+----------+-------------------------------------------------+
|    Column    |     Type     | Collation | Nullable |                     Default                     |
+--------------+--------------+-----------+----------+-------------------------------------------------+
| more_info_id | integer      |           | not null | nextval('more_info_more_info_id_seq'::regclass) |
| birthday     | date         |           |          |                                                 |
| height       | integer      |           |          |                                                 |
| weight       | numeric(4,1) |           |          |                                                 |
| character_id | integer      |           |          |                                                 |
+--------------+--------------+-----------+----------+-------------------------------------------------+
Indexes:
    "more_info_pkey" PRIMARY KEY, btree (more_info_id)
Foreign-key constraints:
    "more_info_character_id_fkey" FOREIGN KEY (character_id) REFERENCES characters(character_id)


mario_database=> 


There's your foreign key at the bottom. These tables have a "one-to-one" relationship. One row in the characters table will be related to exactly one row in more_info and vice versa. Enforce that by adding the UNIQUE constraint to your foreign key. Here's an example:

ALTER TABLE table_name ADD UNIQUE(column_name);
Add the UNIQUE constraint to the column you just added.

mario_database=> ALTER TABLE more_info ADD UNIQUE(more_info_id);
mario_database=> ALTER TABLE

mario_database=> 

The column should also be NOT NULL since you don't want to have a row that is for nobody. Here's an example:

ALTER TABLE table_name ALTER COLUMN column_name SET NOT NULL;
Add the NOT NULL constraint to your foreign key column.

mario_database=> ALTER TABLE more_info ALTER COLUMN character_id SET NOT NULL;
ALTER TABLE



Take a look at the details of your more_info table to see all the keys and constraints you added.

mario_database=> \d more_info
mario_database=>                                         Table "public.more_info"
+--------------+--------------+-----------+----------+-------------------------------------------------+
|    Column    |     Type     | Collation | Nullable |                     Default                     |
+--------------+--------------+-----------+----------+-------------------------------------------------+
| more_info_id | integer      |           | not null | nextval('more_info_more_info_id_seq'::regclass) |
| birthday     | date         |           |          |                                                 |
| height       | integer      |           |          |                                                 |
| weight       | numeric(4,1) |           |          |                                                 |
| character_id | integer      |           | not null |                                                 |
+--------------+--------------+-----------+----------+-------------------------------------------------+
Indexes:
    "more_info_pkey" PRIMARY KEY, btree (more_info_id)
    "more_info_character_id_key" UNIQUE CONSTRAINT, btree (character_id)
Foreign-key constraints:
    "more_info_character_id_fkey" FOREIGN KEY (character_id) REFERENCES characters(character_id)



The structure is set, now you can add some rows. First, you need to know what character_id you need for the foreign key column. You have viewed all columns in a table with *. You can pick columns by putting in the column name instead of *. Use SELECT to view the character_id column from the characters table.

mario_database=> SELECT character_id FROM characters;
mario_database=>         
+--------------+
| character_id |
+--------------+
|            1 |
|            2 |
|            3 |
|            7 |
|            6 |
|            4 |
|            5 |
+--------------+
(7 rows)


mario_database=> 

That list of numbers doesn't really help. Use SELECT again to display both the character_id and name columns from the characters table. You can separate the column names with a comma to view both.



mario_database=> SELECT character_id, name FROM characters;
mario_database=>              
+--------------+--------+
| character_id |  name  |
+--------------+--------+
|            1 | Mario  |
|            2 | Luigi  |
|            3 | Peach  |
|            7 | Yoshi  |
|            6 | Daisy  |
|            4 | Toad   |
|            5 | Bowser |
+--------------+--------+
(7 rows)


mario_database=> 

That's better. You can see Mario's id there. Here's some more info for him:

birthday	height	weight
1981-07-09	155	64.5
Add a row to more_info with the above data for Mario using the INSERT INTO and VALUES keywords. Be sure to set his character_id when adding him. Also, DATE values need a string with the format: 'YYYY-MM-DD'.

mario_database=> \d more_info
mario_database=>                                         Table "public.more_info"
+--------------+--------------+-----------+----------+-------------------------------------------------+
|    Column    |     Type     | Collation | Nullable |                     Default                     |
+--------------+--------------+-----------+----------+-------------------------------------------------+
| more_info_id | integer      |           | not null | nextval('more_info_more_info_id_seq'::regclass) |
| birthday     | date         |           |          |                                                 |
| height       | integer      |           |          |                                                 |
| weight       | numeric(4,1) |           |          |                                                 |
| character_id | integer      |           | not null |                                                 |
+--------------+--------------+-----------+----------+-------------------------------------------------+
Indexes:
    "more_info_pkey" PRIMARY KEY, btree (more_info_id)
    "more_info_character_id_key" UNIQUE CONSTRAINT, btree (character_id)
Foreign-key constraints:
    "more_info_character_id_fkey" FOREIGN KEY (character_id) REFERENCES characters(character_id)


mario_database=> INSERT INTO more_info(birthday, height, weight, character_id) VALUES('1981-07-09', 155, 64.5, 1);
mario_database=> INSERT 0 1

View all the data in more_info to make sure it's looking good.

mario_database=> SELECT * FROM more_info;
mario_database=>                                
+--------------+------------+--------+--------+--------------+
| more_info_id |  birthday  | height | weight | character_id |
+--------------+------------+--------+--------+--------------+
|            1 | 1981-07-09 |    155 |   64.5 |            1 |
+--------------+------------+--------+--------+--------------+
(1 row)


mario_database=> 


Next, you are going to add some info for Luigi. Use SELECT again to view the character_id and name columns from the characters table to find his id.

mario_database=> SELECT character_id, name FROM characters;
             
+--------------+--------+
| character_id |  name  |
+--------------+--------+
|            1 | Mario  |
|            2 | Luigi  |
|            3 | Peach  |
|            7 | Yoshi  |
|            6 | Daisy  |
|            4 | Toad   |
|            5 | Bowser |
+--------------+--------+
(7 rows)

mario_database=> 

You can see Luigi's id there. Here's his info:

birthday	height	weight
1983-07-14	175	48.8
Add a row in more_info for Luigi using the above info. Be sure to add his character_id as well.


**as of 7/22/23**

mario_database=> INSERT INTO more_info(birthday, height, weight, character_id) VALUES('1981-07-09', 155, 64.5),
mario_database-> ('1983-07-14', 175, 48.5);
ERROR:  INSERT has more target columns than expressions
LINE 1: INSERT INTO more_info(birthday, height, weight, character_id...
                                                        ^
mario_database=> INSERT INTO more_info(birthday, height, weight, character_id) VALUES('1981-07-09', 155, 64.5);
ERROR:  INSERT has more target columns than expressions
LINE 1: INSERT INTO more_info(birthday, height, weight, character_id...
                                                        ^
mario_database=> INSERT INTO more_info(birthday, height, weight, character_id) VALUES('1981-07-09', 155, 64.5, 1),
('1983-07-14', 175, 48.5, 2);
INSERT 0 2
mario_database=> SELECT * FROM more_info;
                               
+--------------+------------+--------+--------+--------------+
| more_info_id |  birthday  | height | weight | character_id |
+--------------+------------+--------+--------+--------------+
|            1 | 1981-07-09 |    155 |   64.5 |            1 |
|            2 | 1983-07-14 |    175 |   48.5 |            2 |
+--------------+------------+--------+--------+--------------+
(2 rows)

mario_database=> 



Peach is next. View the character_id and name columns from the characters table again so you can find her id.

1. Use the SELECT and FROM keywords

2. Here's an example: SELECT column1, column2 FROM table_name;

3. Try entering SELECT character_id, name FROM characters;

4. Enter psql --username=freecodecamp --dbname=mario_database into the terminal to log in if you aren't already

mario_database=> select * from characters ORDER BY character_id;
mario_database=>                                
+--------------+--------+------------------+----------------+
| character_id |  name  |     homeland     | favorite_color |
+--------------+--------+------------------+----------------+
|            1 | Mario  | Mushroom Kingdom | Red            |
|            2 | Luigi  | Mushroom Kingdom | Green          |
|            3 | Peach  | Mushroom Kingdom | Pink           |
|            4 | Toad   | Mushroom Kingdom | Blue           |
|            5 | Bowser | Koopa Kingdom    | Yellow         |
|            6 | Daisy  | Sarasaland       | Orange         |
|            7 | Yoshi  | Dinosaur Land    | Green          |
+--------------+--------+------------------+----------------+
(7 rows)


mario_database=> 














-------