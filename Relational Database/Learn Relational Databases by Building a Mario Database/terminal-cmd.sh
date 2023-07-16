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


It worked. Your new database is there. If you don't get a message after entering a command, it means it's incomplete and you likely forgot the semi-colon. You can just add it on the next line and press enter to finish the command. Create another database named second_database.

postgres=> CREATE DATABASE second_database;


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

Create another new table in this database. Give it a name of second_table.
second_database=> CREATE TABLE second_table();

There should be two tables in this database now. Display them again to make sure.

1. Use the display shortcut command

2. Enter \d into the prompt
3. Enter psql --username=freecodecamp --dbname=second_database into the terminal to log in if you aren't already

second_database=> \d
second_database=> 


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
Add a column to second_table named first_column. Give it a data type of INT. INT stands for integer. Don't forget the semi-colon. ??

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


Your column is there ?? Use ALTER TABLE and ADD COLUMN to add another column to second_table named id that's a type of INT.

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



