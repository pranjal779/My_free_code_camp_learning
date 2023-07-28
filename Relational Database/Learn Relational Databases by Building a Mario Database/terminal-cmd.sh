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
second_database=>                     Table "public.second_table"
+--------+-----------------------+-----------+----------+---------+
| Column |         Type          | Collation | Nullable | Default |
+--------+-----------------------+-----------+----------+---------+
| id     | integer               |           |          |         |
| name   | character varying(30) |           |          |         |
+--------+-----------------------+-----------+----------+---------+


second_database=> 

You can see the VARCHAR type there. The 30 means the data in it can be a max of 30 characters. You named that column name, it should have been username. Here's how you can rename a column:

ALTER TABLE table_name RENAME COLUMN column_name TO new_name;
Rename the name column to username.


second_database=> ALTER TABLE second_table RENAME COLUMN name TO username;

see details of the table

second_database=> \d second_table
second_database=> \d second_table 
                     Table "public.second_table"
+----------+-----------------------+-----------+----------+---------+
|  Column  |         Type          | Collation | Nullable | Default |
+----------+-----------------------+-----------+----------+---------+
| id       | integer               |           |          |         |
| username | character varying(30) |           |          |         |
+----------+-----------------------+-----------+----------+---------+

second_database=> 


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

That gives me an idea 😃 You can make a database of Mario video game characters. You should start from scratch for it. Why don't you delete the record you just entered. Here's an example of how to delete a row:

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

second_database=> \d second_table 
second_database=>            Table "public.second_table"
+--------+------+-----------+----------+---------+
| Column | Type | Collation | Nullable | Default |
+--------+------+-----------+----------+---------+
+--------+------+-----------+----------+---------+

or

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

mario_database=> INSERT INTO characters(name, homeland, favorite_color) VALUES('Daisy', 'Sarasaland', 'Yellow'),
mario_database-> ('Yoshi', 'Dinosaur Land', 'Green');
mario_database=> INSERT 0 2


Take a look at all the data in your table with SELECT to see where you stand.

mario_database=> SELECT * FROM characters;
mario_database=>
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
|            7 | Yoshi     | Dinosaur Land    | Green          |
+--------------+-----------+------------------+----------------+
(7 rows) 


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

mario_database=> UPDATE characters SET favorite_color='Yellow' WHERE character_id=5;
UPDATE 1
mario_database=> 

**

Bowser's homeland is wrong as well. He's from the Koopa Kingdom. Why don't you change it to that without changing any other rows?

mario_database=> UPDATE characters SET homeland='Koopa Kingdom' WHERE name='Bowser';
mario_database=> UPDATE 1
**

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

mario_database=> \d characters_character_id_seq
mario_database=>              Sequence "public.characters_character_id_seq"
+---------+-------+---------+------------+-----------+---------+-------+
|  Type   | Start | Minimum |  Maximum   | Increment | Cycles? | Cache |
+---------+-------+---------+------------+-----------+---------+-------+
| integer |     1 |       1 | 2147483647 |         1 | no      |     1 |
+---------+-------+---------+------------+-----------+---------+-------+
Owned by: public.characters.character_id


mario_database=> 

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

codeally@83f36d2ca350:~/project$ psql --username=freecodecamp --dbname=postgres
Border style is 2.
Title is " ".
Pager usage is off.
psql (12.9 (Ubuntu 12.9-2.pgdg20.04+1))
Type "help" for help.

postgres=> \l
postgres=>                                    List of databases
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

\c mario_database
You are now connected to database "mario_database" as user "freecodecamp".
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

\d more_info
                                        Table "public.more_info"
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

mario_database=> SELECT character_id, name FROM characters;
mario_database=>              
+--------------+--------+
| character_id |  name  |
+--------------+--------+
|            2 | Luigi  |
|            3 | Peach  |
|            7 | Yoshi  |
|            6 | Daisy  |
|            1 | Mario  |
|            4 | Toad   |
|            5 | Bowser |
+--------------+--------+
(7 rows)


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


Here's the additional info for Peach:

birthday	height	weight
1985-10-18	173	52.2
Add a row for Peach using the above info. Be sure to add her character_id as well.


mario_database=> INSERT INTO more_info(birthday, height, weight, character_id) VALUES('1985-10-18', 173, 52.2, 3);
mario_database=> INSERT 0 1



Toad is next. Instead of viewing all the rows to find his id, you can just view his row with a WHERE condition. You used several earlier to delete and update rows. You can use it to view rows as well. Here's an example:

SELECT columns FROM table_name WHERE condition;
A condition you used before was username='Samus'. Find Toad's id by viewing the character_id and name columns from characters for only his row.


mario_database=> SELECT character_id, name FROM characters WHERE name='Toad';
            
+--------------+------+
| character_id | name |
+--------------+------+
|            4 | Toad |
+--------------+------+
(1 row)

mario_database=> 


Here's what Toad's info looks like:

birthday	height	weight
1950-01-10	66	35.6
Add the above info for Toad. Be sure to add his character_id.

mario_database=> INSERT INTO more_info(birthday, height, weight, character_id) VALUES('1950-01-10', 66, 35.6, 4);
mario_database=> INSERT 0 1

mario_database=> 

View all the data in more_info to see the rows you added.

mario_database=> SELECT * FROM more_info;
                               
+--------------+------------+--------+--------+--------------+
| more_info_id |  birthday  | height | weight | character_id |
+--------------+------------+--------+--------+--------------+
|            1 | 1981-07-09 |    155 |   64.5 |            1 |
|            2 | 1983-07-14 |    175 |   48.8 |            2 |
|            3 | 1985-10-18 |    173 |   52.2 |            3 |
|            4 | 1950-01-10 |     66 |   35.6 |            4 |
+--------------+------------+--------+--------+--------------+
(4 rows)

mario_database=> 

Bowser is next. Find his id by viewing the character_id and name columns for only his row.

SELECT character_id, name FROM characters WHERE name='Bowser';
mario_database=>              
+--------------+--------+
| character_id |  name  |
+--------------+--------+
|            5 | Bowser |
+--------------+--------+
(1 row)


mario_database=> 

Here's what Bowser's info looks like:

birthday	height	weight
1990-10-29	258	300
Add the above info for Bowser. Don't forget to add his character_id.

mario_database=> INSERT INTO more_info(birthday, height, weight, character_id) VALUES('1990-10-29', 258, 300, 5);
mario_database=> INSERT 0 1

mario_database=> 


Daisy is next. Find her id by viewing the character_id and name columns for only her row.

mario_database=> SELECT character_id, name FROM characters WHERE name='Daisy';
mario_database=>             
+--------------+-------+
| character_id | name  |
+--------------+-------+
|            6 | Daisy |
+--------------+-------+
(1 row)


mario_database=> 

The info for Daisy looks like this:

birthday	height	weight
1989-07-31	NULL	NULL
Add the above info for Daisy to more_info. Be sure to add her character_id as well. You can use NULL or simply not include the null columns when inserting.

mario_database=> INSERT INTO more_info(birthday, height, weight, character_id) VALUES('1989-07-31', NULL, NULL, 6);
mario_database=> INSERT 0 1

mario_database=> 

View all the data in more_info to see the rows you added.

mario_database=> SELECT * FROM more_info;
                               
+--------------+------------+--------+--------+--------------+
| more_info_id |  birthday  | height | weight | character_id |
+--------------+------------+--------+--------+--------------+
|            1 | 1981-07-09 |    155 |   64.5 |            1 |
|            2 | 1983-07-14 |    175 |   48.8 |            2 |
|            3 | 1985-10-18 |    173 |   52.2 |            3 |
|            4 | 1950-01-10 |     66 |   35.6 |            4 |
|            5 | 1990-10-29 |    258 |  300.0 |            5 |
|            6 | 1989-07-31 |        |        |            6 |
+--------------+------------+--------+--------+--------------+
(6 rows)

mario_database=> 

Null values show up as blank. Yoshi is last. Find his id by viewing the character_id and name columns for only his row.


mario_database=> SELECT character_id, name FROM characters WHERE name='Yoshi';
            
+--------------+-------+
| character_id | name  |
+--------------+-------+
|            7 | Yoshi |
+--------------+-------+
(1 row)

mario_database=> 

The info for Yoshi looks like this:

birthday	height	weight
1990-04-13	162	59.1
Add the above info for Yoshi to more_info. Be sure to include his character_id.

mario_database=> INSERT INTO more_info(birthday, height, weight, character_id) VALUES('1990-04-13', 162, 59.1, 7);
mario_database=> INSERT 0 1

There should be a lot of data in more_info now. Take a look at all the rows and columns in it.

mario_database=> SELECT * FROM more_info;
                               
+--------------+------------+--------+--------+--------------+
| more_info_id |  birthday  | height | weight | character_id |
+--------------+------------+--------+--------+--------------+
|            1 | 1981-07-09 |    155 |   64.5 |            1 |
|            2 | 1983-07-14 |    175 |   48.8 |            2 |
|            3 | 1985-10-18 |    173 |   52.2 |            3 |
|            4 | 1950-01-10 |     66 |   35.6 |            4 |
|            5 | 1990-10-29 |    258 |  300.0 |            5 |
|            6 | 1989-07-31 |        |        |            6 |
|            7 | 1990-04-13 |    162 |   59.1 |            7 |
+--------------+------------+--------+--------+--------------+
(7 rows)

mario_database=> 




It looks good. There is something you can do to help out though. What units do the height and weight columns use? It's centimeters and kilograms, but nobody will know. Rename the height column to height_in_cm.

mario_database=> ALTER TABLE more_info RENAME COLUMN height TO height_in_cm;
mario_database=> ALTER TABLE

mario_database=> 

Rename the weight column to weight_in_kg.

mario_database=> ALTER TABLE more_info RENAME COLUMN weight TO weight_in_cm;
ALTER TABLE
mario_database=> 


Take a quick look at all the data in more_info to see the new column names.

mario_database=> SELECT * FROM more_info;
mario_database=>                                      
+--------------+------------+--------------+--------------+--------------+
| more_info_id |  birthday  | height_in_cm | weight_in_cm | character_id |
+--------------+------------+--------------+--------------+--------------+
|            1 | 1981-07-09 |          155 |         64.5 |            1 |
|            2 | 1983-07-14 |          175 |         48.8 |            2 |
|            3 | 1985-10-18 |          173 |         52.2 |            3 |
|            4 | 1950-01-10 |           66 |         35.6 |            4 |
|            5 | 1990-10-29 |          258 |        300.0 |            5 |
|            6 | 1989-07-31 |              |              |            6 |
|            7 | 1990-04-13 |          162 |         59.1 |            7 |
+--------------+------------+--------------+--------------+--------------+
(7 rows)


mario_database=> 

Next, you will make a sounds table that holds filenames of sounds the characters make. You created your other tables similar to this:

CREATE TABLE table_name();
Inside those parenthesis you can put columns for a table so you don't need to add them with a separate command, like this:

CREATE TABLE table_name(column_name DATATYPE CONSTRAINTS);
Create a new table named sounds. Give it a column named sound_id of type SERIAL and a constraint of PRIMARY KEY.

mario_database=> CREATE TABLE sounds(sound_id SERIAL PRIMARY KEY);
CREATE TABLE


View the tables in mario_database to make sure it worked.

mario_database=> \d
mario_database=>                         List of relations
+--------+-----------------------------+----------+--------------+
| Schema |            Name             |   Type   |    Owner     |
+--------+-----------------------------+----------+--------------+
| public | characters                  | table    | freecodecamp |
| public | characters_character_id_seq | sequence | freecodecamp |
| public | more_info                   | table    | freecodecamp |
| public | more_info_more_info_id_seq  | sequence | freecodecamp |
| public | sounds                      | table    | freecodecamp |
| public | sounds_sounds_id_seq        | sequence | freecodecamp |
+--------+-----------------------------+----------+--------------+
(6 rows)


mario_database=> 

There's your sounds table. Add a column to it named filename. Make it a VARCHAR that has a max length of 40 and with constraints of NOT NULL and UNIQUE. You can put those constraints at the end of the query to add them all.

mario_database=> ALTER TABLE sounds ADD COLUMN filename VARCHAR(40) NOT NULL UNIQUE;
mario_database=> ALTER TABLE

mario_database=> 

You want to use character_id as a foreign key again. This will be a "one-to-many" relationship because one character will have many sounds, but no sound will have more than one character. Here's the example again:

ALTER TABLE table_name ADD COLUMN column_name DATATYPE CONSTRAINT REFERENCES referenced_table_name(referenced_column_name);
Add a column to sounds named character_id. Give it the properties INT, NOT NULL, and set it as a foreign key that references character_id from characters.

mario_database=> ALTER TABLE sounds ADD COLUMN character_id INT CONSTRAINT REFERNCE characters(character_id);
ERROR:  syntax error at or near "characters"
LINE 1: ...s ADD COLUMN character_id INT CONSTRAINT REFERNCE characters...
                                                             ^
mario_database=> ALTER TABLE sounds ADD COLUMN character_id INT CONSTRAINT REFERENCE characters(character_id);
ERROR:  syntax error at or near "characters"
LINE 1: ... ADD COLUMN character_id INT CONSTRAINT REFERENCE characters...
                                                             ^
mario_database=> ALTER TABLE sounds ADD COLUMN character_id INT REFERENCE characters(character_id);
ERROR:  syntax error at or near "REFERENCE"
LINE 1: ALTER TABLE sounds ADD COLUMN character_id INT REFERENCE cha...
                                                       ^
mario_database=> ALTER TABLE sounds ADD COLUMN character_id INT REFERENCES characters(character_id);
mario_database=> ALTER TABLE

mario_database=> 

Take a look at the details of the sounds table to see all the columns.

mario_database=> \d sounds
                                           Table "public.sounds"
+--------------+-----------------------+-----------+----------+-------------------------------------------+
|    Column    |         Type          | Collation | Nullable |                  Default                  |
+--------------+-----------------------+-----------+----------+-------------------------------------------+
| sound_id     | integer               |           | not null | nextval('sounds_sounds_id_seq'::regclass) |
| filename     | character varying(40) |           | not null |                                           |
| character_id | integer               |           |          |                                           |
+--------------+-----------------------+-----------+----------+-------------------------------------------+
Indexes:
    "sounds_pkey" PRIMARY KEY, btree (sound_id)
    "sounds_filename_key" UNIQUE CONSTRAINT, btree (filename)
Foreign-key constraints:
    "sounds_character_id_fkey" FOREIGN KEY (character_id) REFERENCES characters(character_id)

mario_database=> 




Next, you will add some rows. But first, view all the data in characters so you can find the correct id's again. Order them by character_id like you did earlier.

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


The first file is named its-a-me.wav. Insert it into the sounds table with Mario's id as the character_id.

mario_database=> INSERT INTO sounds(filename, character_id) VALUES('its-a-me.wav', 1);
mario_database=> INSERT 0 1

mario_database=> 



Add another row with a filename of yippee.wav. Use Mario's character_id again for the foreign key value.

mario_database=> INSERT INTO sounds(filename, character_id) VALUES('yippee.wav', 1);
mario_database=> INSERT 0 1

Add another row to sounds for Luigi named ha-ha.wav. Use his character_id this time. Take a look at the data in characters to find his id if you need to.

mario_database=> INSERT INTO sounds(filename, character_id) VALUES('ha-ha.wav', 2);
INSERT 0 1
mario_database=> 

Add another row with a filename of oh-yeah.wav. This one is for Luigi as well so use his character_id again.

mario_database=> INSERT INTO sounds(filename, character_id) VALUES('oh-yeah.wav', 2);
INSERT 0 1
mario_database=> 



Add two more rows for Peach sounds. The filenames are yay.wav and woo-hoo.wav. Don't forget her character_id. Try to do it with one command.

mario_database=> INSERT INTO sounds(filename, character_id) VALUES('yay.wav', 3),
mario_database-> ('woo-hoo.wav', 3);
mario_database=> INSERT 0 2

mario_database=> 


Add two more rows. The filenames are mm-hmm.wav and yahoo.wav. The first one is for Peach again, the second is for Mario, so use the correct foreign key values. Try to do it with one command.

mario_database=> INSERT INTO sounds(filename, character_id) VALUES('mm-hmm.wav', 3),
mario_database-> ('yahoo.wav', 1);
mario_database=> INSERT 0 2

mario_database=> 


View all the data in the sounds table. You should be able to see the "one-to-many" relationship better. One character has many sounds.

mario_database=> SELECT * FROM sounds;
                     
+----------+--------------+--------------+
| sound_id |   filename   | character_id |
+----------+--------------+--------------+
|        1 | its-a-me.wav |            1 |
|        2 | yippee.wav   |            1 |
|        3 | ha-ha.wav    |            2 |
|        4 | oh-yeah.wav  |            2 |
|        5 | yay.wav      |            3 |
|        6 | woo-hoo.wav  |            3 |
|        7 | mm-hmm.wav   |            3 |
|        8 | yahoo.wav    |            1 |
+----------+--------------+--------------+
(8 rows)

mario_database=> 


See the "one-to-many" relationship? Create another new table called actions. Give it a column named action_id that's a type of SERIAL, and make it the PRIMARY KEY. Try to create the table and add the column with one command.

mario_database=> CREATE TABLE actions(action_id SERIAL PRIMARY KEY);
mario_database=> CREATE TABLE

mario_database=> 


Add a column named action to your new table. Give it a type of VARCHAR that is a max length of 20 and has UNIQUE and NOT NULL constraints.

mario_database=> 
mario_database=> ALTER TABLE actions ADD COLUMN action VARCHAR(20) UNIQUE NOT NULL;
mario_database=> ALTER TABLE

mario_database=> 



The actions table won't have any foreign keys. It's going to have a "many-to-many" relationship with the characters table. This is because many of the characters can perform many actions. You will see why you don't need a foreign key later. Insert a row into the actions table. Give it an action of run.

mario_database=> \d actions
                                         Table "public.actions"
+-----------+-----------------------+-----------+----------+--------------------------------------------+
|  Column   |         Type          | Collation | Nullable |                  Default                   |
+-----------+-----------------------+-----------+----------+--------------------------------------------+
| action_id | integer               |           | not null | nextval('actions_action_id_seq'::regclass) |
| action    | character varying(20) |           | not null |                                            |
+-----------+-----------------------+-----------+----------+--------------------------------------------+
Indexes:
    "actions_pkey" PRIMARY KEY, btree (action_id)
    "actions_action_key" UNIQUE CONSTRAINT, btree (action)

mario_database=> INSERT INTO actions(action) VALUES('run');
mario_database=> INSERT 0 1

mario_database=>

Insert another row into the actions table. Give it an action of jump.

mario_database=> INSERT INTO actions(action) VALUES('jump');
mario_database=> INSERT 0 1

mario_database=> 


Add another action row with an action of duck.

mario_database=> INSERT INTO actions(action) VALUES('duck');
mario_database=> INSERT 0 1

mario_database=> 

View all the data in actions to make sure there's no mistakes.

mario_database=> SELECT * FROM actions;
mario_database=>            
+-----------+--------+
| action_id | action |
+-----------+--------+
|         1 | run    |
|         2 | jump   |
|         3 | duck   |
+-----------+--------+
(3 rows)


mario_database=> 

It looks good. "Many-to-many" relationships usually use a junction table to link two tables together, forming two "one-to-many" relationships. Your characters and actions table will be linked using a junction table. Create a new table called character_actions. It will describe what actions each character can perform.

mario_database=> CREATE TABLE character_actions();
mario_database=> CREATE TABLE

mario_database=> 


Your junction table will use the primary keys from the characters and actions tables as foreign keys to create the relationship. Add a column named character_id to your junction table. Give it the type of INT and constraint of NOT NULL.

mario_database=> ALTER TABLE character_actions ADD COLUMN character_id INT NOT NULL;
ALTER TABLE
mario_database=> 

The foreign keys you set before were added when you created the column. You can set an existing column as a foreign key like this:

ALTER TABLE table_name ADD FOREIGN KEY(column_name) REFERENCES referenced_table(referenced_column);
Set the character_id column you just added as a foreign key that references the character_id from the characters table.

mario_database=> ALTER TABLE character_actions ADD FOREIGN KEY(character_id) REFERENCES characters(character_id);
mario_database=> ALTER TABLE

mario_database=>

View the details of the character_actions table to see the foreign key you added.

mario_database=> \d character_actions
mario_database=>              Table "public.character_actions"
+--------------+---------+-----------+----------+---------+
|    Column    |  Type   | Collation | Nullable | Default |
+--------------+---------+-----------+----------+---------+
| character_id | integer |           | not null |         |
+--------------+---------+-----------+----------+---------+
Foreign-key constraints:
    "character_actions_character_id_fkey" FOREIGN KEY (character_id) REFERENCES characters(character_id)


mario_database=>



Add another column to character_actions named action_id. Give it a type of INT and constraint of NOT NULL.


mario_database=> ALTER TABLE character_actions ADD COLUMN action_id INT NOT NULL;
ALTER TABLE
mario_database=> 


This will be a foreign key as well. Set the action_id column you just added as a foreign key that references the action_id column from the actions table.

mario_database=> ALTER TABLE character_actions ADD FOREIGN KEY(action_id) REFERENCES actions(action_id);
mario_database=> ALTER TABLE

mario_database=>

View the details of the character_actions table to see your keys.

mario_database=> \d character_actions
mario_database=>              Table "public.character_actions"
+--------------+---------+-----------+----------+---------+
|    Column    |  Type   | Collation | Nullable | Default |
+--------------+---------+-----------+----------+---------+
| character_id | integer |           | not null |         |
| action_id    | integer |           | not null |         |
+--------------+---------+-----------+----------+---------+
Foreign-key constraints:
    "character_actions_action_id_fkey" FOREIGN KEY (action_id) REFERENCES actions(action_id)
    "character_actions_character_id_fkey" FOREIGN KEY (character_id) REFERENCES characters(character_id)


mario_database=> 


Every table should have a primary key. Your previous tables had a single column as a primary key. This one will be different. You can create a primary key from two columns, known as a composite primary key. Here's an example:

ALTER TABLE table_name ADD PRIMARY KEY(column1, column2);
Use character_id and action_id to create a composite primary key for this table.

mario_database=> ALTER TABLE character_actions ADD PRIMARY KEY(character_id, action_id);
ALTER TABLE
mario_database=> 

This table will have multiple rows with the same character_id, and multiple rows the same action_id. So neither of them are unique. But you will never have the same character_id and action_id in a single row. So the two columns together can be used to uniquely identify each row. View the details of the character_actions table to see your composite key.

mario_database=> \d character_actions
mario_database=>              Table "public.character_actions"
+--------------+---------+-----------+----------+---------+
|    Column    |  Type   | Collation | Nullable | Default |
+--------------+---------+-----------+----------+---------+
| character_id | integer |           | not null |         |
| action_id    | integer |           | not null |         |
+--------------+---------+-----------+----------+---------+
Indexes:
    "character_actions_pkey" PRIMARY KEY, btree (character_id, action_id)
Foreign-key constraints:
    "character_actions_action_id_fkey" FOREIGN KEY (action_id) REFERENCES actions(action_id)
    "character_actions_character_id_fkey" FOREIGN KEY (character_id) REFERENCES characters(character_id)


mario_database=> 

Insert three rows into character_actions for all the actions Yoshi can perform. He can perform all of them in the actions table. View the data in the characters and actions table to find the correct id's for the information.

mario_database=> INSERT INTO character_actions(character_id, action_id) VALUES(7, 1),
mario_database-> (7, 2),
mario_database-> (7, 3);
INSERT 0 3
mario_database=>

View all the data in character_actions to see your rows.

mario_database=> SELECT * FROM character_actions;
mario_database=>               
+--------------+-----------+
| character_id | action_id |
+--------------+-----------+
|            7 |         1 |
|            7 |         2 |
|            7 |         3 |
+--------------+-----------+
(3 rows)


mario_database=> 

Add three more rows into character_actions for all of Daisy's actions. She can perform all of the actions, as well.

mario_database=> INSERT INTO character_actions(character_id, action_id) VALUES(6, 1),
mario_database-> (6, 2),
mario_database-> (6, 3);
mario_database=> INSERT 0 3

mario_database=> 


Bowser can perform all the actions. Add three rows to the table for him.

mario_database=> INSERT INTO character_actions(character_id, action_id) VALUES(5, 1),
mario_database-> (5, 2),
mario_database-> (5, 3);
mario_database=> INSERT 0 3

mario_database=>

Next is Toad. Add three more rows for his actions.

mario_database=> INSERT INTO character_actions(character_id, action_id) VALUES(4, 1),
mario_database-> (4, 2),
mario_database-> (4,3);
mario_database=> INSERT 0 3

mario_database=> 


You guessed it. Peach can perform all the actions as well, so add three more rows for her.

mario_database=> I
mario_database=> INSERT INTO character_actions(character_id, action_id) VALUES(3, 1),
mario_database-> (3, 2),
mario_database-> (3, 3);
mario_database=> INSERT 0 3

Add three more rows for Luigi's actions.

mario_database=> INSERT INTO character_actions(character_id, action_id) VALUES(2, 1),
(2, 2),
(2, 3);
mario_database=> INSERT 0 3

mario_database=> 

Last is Mario, add three rows for his actions.

mario_database=> INSERT INTO character_actions(character_id, action_id) VALUES(1, 1),
(1, 2),
(1, 3);
mario_database=> INSERT 0 3

That was a lot of work. View all the data in character_actions to see the rows you ended up with.

mario_database=> SELECT * FROM character_actions;
              
+--------------+-----------+
| character_id | action_id |
+--------------+-----------+
|            7 |         1 |
|            7 |         2 |
|            7 |         3 |
|            6 |         1 |
|            6 |         2 |
|            6 |         3 |
|            5 |         1 |
|            5 |         2 |
|            5 |         3 |
|            4 |         1 |
|            4 |         2 |
|            4 |         3 |
|            3 |         1 |
|            3 |         2 |
|            3 |         3 |
|            2 |         1 |
|            2 |         2 |
|            2 |         3 |
|            1 |         1 |
|            1 |         2 |
|            1 |         3 |
+--------------+-----------+
(21 rows)

mario_database=> 

Well done. The database is complete for now. Take a look around to see what you ended up with. First, display all the tables you created.



mario_database=> \d
mario_database=>                         List of relations
+--------+-----------------------------+----------+--------------+
| Schema |            Name             |   Type   |    Owner     |
+--------+-----------------------------+----------+--------------+
| public | actions                     | table    | freecodecamp |
| public | actions_action_id_seq       | sequence | freecodecamp |
| public | character_actions           | table    | freecodecamp |
| public | characters                  | table    | freecodecamp |
| public | characters_character_id_seq | sequence | freecodecamp |
| public | more_info                   | table    | freecodecamp |
| public | more_info_more_info_id_seq  | sequence | freecodecamp |
| public | sounds                      | table    | freecodecamp |
| public | sounds_sounds_id_seq        | sequence | freecodecamp |
+--------+-----------------------------+----------+--------------+
(9 rows)


mario_database=> 

There's five tables there. Nice job. Next, take a look at all the data in the characters table.

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

Those are some lovely characters. View all the data in the more_info table.

mario_database=> SELECT * FROM more_info;
mario_database=>                                      
+--------------+------------+--------------+--------------+--------------+
| more_info_id |  birthday  | height_in_cm | weight_in_cm | character_id |
+--------------+------------+--------------+--------------+--------------+
|            1 | 1981-07-09 |          155 |         64.5 |            1 |
|            2 | 1983-07-14 |          175 |         48.8 |            2 |
|            3 | 1985-10-18 |          173 |         52.2 |            3 |
|            4 | 1950-01-10 |           66 |         35.6 |            4 |
|            5 | 1990-10-29 |          258 |        300.0 |            5 |
|            6 | 1989-07-31 |              |              |            6 |
|            7 | 1990-04-13 |          162 |         59.1 |            7 |
+--------------+------------+--------------+--------------+--------------+
(7 rows)


mario_database=>


You can see the character_id there so you just need to find the matching id in the characters table to find out who it's for. Or... You added that as a foreign key, that means you can get all the data from both tables with a JOIN command:

SELECT columns FROM table_1 FULL JOIN table_2 ON table_1.primary_key_column = table_2.foreign_key_column;
Enter a join command to see all the info from both tables. The two tables are characters and more_info. The columns are the character_id column from both tables since those are the linked keys.

mario_database=> SELECT * FROM characters FULL JOIN more_info ON characters.character_id = more_info.character_id;
mario_database=>                                                                    
+--------------+--------+------------------+----------------+--------------+------------+--------------+--------------+--------------+
| character_id |  name  |     homeland     | favorite_color | more_info_id |  birthday  | height_in_cm | weight_in_cm | character_id |
+--------------+--------+------------------+----------------+--------------+------------+--------------+--------------+--------------+
|            2 | Luigi  | Mushroom Kingdom | Green          |            2 | 1983-07-14 |          175 |         48.8 |            2 |
|            3 | Peach  | Mushroom Kingdom | Pink           |            3 | 1985-10-18 |          173 |         52.2 |            3 |
|            7 | Yoshi  | Dinosaur Land    | Green          |            7 | 1990-04-13 |          162 |         59.1 |            7 |
|            6 | Daisy  | Sarasaland       | Orange         |            6 | 1989-07-31 |              |              |            6 |
|            1 | Mario  | Mushroom Kingdom | Red            |            1 | 1981-07-09 |          155 |         64.5 |            1 |
|            4 | Toad   | Mushroom Kingdom | Blue           |            4 | 1950-01-10 |           66 |         35.6 |            4 |
|            5 | Bowser | Koopa Kingdom    | Yellow         |            5 | 1990-10-29 |          258 |        300.0 |            5 |
+--------------+--------+------------------+----------------+--------------+------------+--------------+--------------+--------------+
(7 rows)


mario_database=> 


Now you can see all the info from both tables. If you recall, that's a "one-to-one" relationship. So there's one row in each table that matches a row from the other. Use another JOIN command to view the characters and sounds tables together. They both use the character_id column for their keys as well.


mario_database=> SELECT * FROM characters FULL JOIN sounds ON characters.character_id = sounds.character_id;
mario_database=>                                                    
+--------------+--------+------------------+----------------+----------+--------------+--------------+
| character_id |  name  |     homeland     | favorite_color | sound_id |   filename   | character_id |
+--------------+--------+------------------+----------------+----------+--------------+--------------+
|            1 | Mario  | Mushroom Kingdom | Red            |        1 | its-a-me.wav |            1 |
|            1 | Mario  | Mushroom Kingdom | Red            |        2 | yippee.wav   |            1 |
|            2 | Luigi  | Mushroom Kingdom | Green          |        3 | ha-ha.wav    |            2 |
|            2 | Luigi  | Mushroom Kingdom | Green          |        4 | oh-yeah.wav  |            2 |
|            3 | Peach  | Mushroom Kingdom | Pink           |        5 | yay.wav      |            3 |
|            3 | Peach  | Mushroom Kingdom | Pink           |        6 | woo-hoo.wav  |            3 |
|            3 | Peach  | Mushroom Kingdom | Pink           |        7 | mm-hmm.wav   |            3 |
|            1 | Mario  | Mushroom Kingdom | Red            |        8 | yahoo.wav    |            1 |
|            5 | Bowser | Koopa Kingdom    | Yellow         |          |              |              |
|            6 | Daisy  | Sarasaland       | Orange         |          |              |              |
|            4 | Toad   | Mushroom Kingdom | Blue           |          |              |              |
|            7 | Yoshi  | Dinosaur Land    | Green          |          |              |              |
+--------------+--------+------------------+----------------+----------+--------------+--------------+
(12 rows)


mario_database=> 

This shows the "one-to-many" relationship. You can see that some of the characters have more than one row because they have many sounds. How can you see all the info from the characters, actions, and character_actions tables? Here's an example that joins three tables:

SELECT columns FROM junction_table
FULL JOIN table_1 ON junction_table.foreign_key_column = table_1.primary_key_column
FULL JOIN table_2 ON junction_table.foreign_key_column = table_2.primary_key_column;
Congratulations on making it this far. This is the last step. View all the data from characters, actions, and character_actions by joining all three tables. When you see the data, be sure to check the "many-to_many" relationship. Many characters will have many actions.

hint:
1. Use the character_id column to join character_actions and characters

2. Use the action_id column to join character_actions and actions

3. Without the keywords, it looks like this: character_actions characters character_actions.character_id = characters.character_id actions character_actions.action_id = actions.action_id;

4. Try entering SELECT * FROM character_actions FULL JOIN characters ON character_actions.character_id = characters.character_id FULL JOIN actions ON character_actions.action_id = actions.action_id;

mario_database=> SELECT * FROM character_actions
FULL JOIN characters ON character_actions.character_id = characters.character_id
FULL JOIN actions ON character_actions.character_id = actions.action_id;
mario_database=>                                                        
+--------------+-----------+--------------+--------+------------------+----------------+-----------+--------+
| character_id | action_id | character_id |  name  |     homeland     | favorite_color | action_id | action |
+--------------+-----------+--------------+--------+------------------+----------------+-----------+--------+
|            7 |         1 |            7 | Yoshi  | Dinosaur Land    | Green          |           |        |
|            7 |         2 |            7 | Yoshi  | Dinosaur Land    | Green          |           |        |
|            7 |         3 |            7 | Yoshi  | Dinosaur Land    | Green          |           |        |
|            6 |         1 |            6 | Daisy  | Sarasaland       | Orange         |           |        |
|            6 |         2 |            6 | Daisy  | Sarasaland       | Orange         |           |        |
|            6 |         3 |            6 | Daisy  | Sarasaland       | Orange         |           |        |
|            5 |         1 |            5 | Bowser | Koopa Kingdom    | Yellow         |           |        |
|            5 |         2 |            5 | Bowser | Koopa Kingdom    | Yellow         |           |        |
|            5 |         3 |            5 | Bowser | Koopa Kingdom    | Yellow         |           |        |
|            4 |         1 |            4 | Toad   | Mushroom Kingdom | Blue           |           |        |
|            4 |         2 |            4 | Toad   | Mushroom Kingdom | Blue           |           |        |
|            4 |         3 |            4 | Toad   | Mushroom Kingdom | Blue           |           |        |
|            3 |         1 |            3 | Peach  | Mushroom Kingdom | Pink           |         3 | duck   |
|            3 |         2 |            3 | Peach  | Mushroom Kingdom | Pink           |         3 | duck   |
|            3 |         3 |            3 | Peach  | Mushroom Kingdom | Pink           |         3 | duck   |
|            2 |         1 |            2 | Luigi  | Mushroom Kingdom | Green          |         2 | jump   |
|            2 |         2 |            2 | Luigi  | Mushroom Kingdom | Green          |         2 | jump   |
|            2 |         3 |            2 | Luigi  | Mushroom Kingdom | Green          |         2 | jump   |
|            1 |         1 |            1 | Mario  | Mushroom Kingdom | Red            |         1 | run    |
|            1 |         2 |            1 | Mario  | Mushroom Kingdom | Red            |         1 | run    |
|            1 |         3 |            1 | Mario  | Mushroom Kingdom | Red            |         1 | run    |
+--------------+-----------+--------------+--------+------------------+----------------+-----------+--------+
(21 rows)








-------