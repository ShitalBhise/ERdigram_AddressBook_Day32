Enter password: *************
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 15
Server version: 8.0.28 MySQL Community Server - GPL

Copyright (c) 2000, 2022, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> create database AddressBook_Database_System;
Query OK, 1 row affected (0.15 sec)

mysql> show database
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'database' at line 1
mysql> show databases;
+-----------------------------+
| Database                    |
+-----------------------------+
| address_book_service        |
| address_book_system         |
| addressbook_database_system |
| addressbook_syatem          |
| information_schema          |
| mysql                       |
| performance_schema          |
| sys                         |
+-----------------------------+
8 rows in set (0.00 sec)

mysql>
mysql> create table AddressBook
    -> (firstname VARCHAR(32) NOT NULL,lastname VARCHAR(32) NOT NULL,address VARCHAR(150) NOT NULL,city VARCHAR(32) NOT NULL,state VARCHAR(32) NOT NULL,zip INT unsigned NOT NULL,phonenumber INT unsigned NOT NULL,email VARCHAR(150) NOT NULL);
Query OK, 0 rows affected (2.97 sec)

mysql> desc AddressBook
    -> ;
+-------------+--------------+------+-----+---------+-------+
| Field       | Type         | Null | Key | Default | Extra |
+-------------+--------------+------+-----+---------+-------+
| firstname   | varchar(32)  | NO   |     | NULL    |       |
| lastname    | varchar(32)  | NO   |     | NULL    |       |
| address     | varchar(150) | NO   |     | NULL    |       |
| city        | varchar(32)  | NO   |     | NULL    |       |
| state       | varchar(32)  | NO   |     | NULL    |       |
| zip         | int unsigned | NO   |     | NULL    |       |
| phonenumber | int unsigned | NO   |     | NULL    |       |
| email       | varchar(150) | NO   |     | NULL    |       |
+-------------+--------------+------+-----+---------+-------+
8 rows in set (0.13 sec)

mysql> 
mysql> insert into AddressBook(firstname,lastname,address,city,state,zip,phonenumber,email) values('Shital','Bhise','Shivaji','Digras','Maharashtra',445203,468239279359,'Shivaji@gmail.com');
ERROR 1264 (22003): Out of range value for column 'phonenumber' at row 1
mysql> insert into AddressBook(firstname,lastname,address,city,state,zip,phonenumber,email) values('Shital','Bhise','Shivaji','Digras','Maharashtra',445203,4634784590,'Shivaji@gmail.com');
ERROR 1264 (22003): Out of range value for column 'phonenumber' at row 1
mysql> insert into AddressBook(firstname,lastname,address,city,state,zip,phonenumber,email) values('Shital','Bhise','Shivaji','Digras','Maharashtra',445203,9834278900,'Shivaji@gmail.com');
ERROR 1264 (22003): Out of range value for column 'phonenumber' at row 1
mysql> insert into AddressBook(firstname,lastname,address,city,state,zip,phonenumber,email) values('Shital','Bhise','Shivaji','Digras','Maharashtra',445203,98342789,'Shivaji@gmail.com');
Query OK, 1 row affected (0.13 sec)

mysql> insert into AddressBook(firstname,lastname,address,city,state,zip,phonenumber,email) values('Shree','shivaji','Shivajishree','Dig','Maharashtra',446703,99347610,'Shree@gmail.com');
Query OK, 1 row affected (0.12 sec)

mysql> insert into AddressBook(firstname,lastname,address,city,state,zip,phonenumber,email) values('Anjali','bhide','AmbikaNagar','nagpur','Gujrat',789450,12345678,'Anjali@gmail.com');
Query OK, 1 row affected (0.09 sec)

mysql> insert into AddressBook(firstname,lastname,address,city,state,zip,phonenumber,email) values('Vaishnavi','bhosle','bapunagar','jaipur','Rajastan',654321,98765432,'Vaishnavi@gmail.com');
Query OK, 1 row affected (0.16 sec)

mysql> insert into AddressBook(firstname,lastname,address,city,state,zip,phonenumber,email) values('Shish','Pachpor','sainagar','Benglore','Kernataka',445678,87654567,'Pachpor@gmail.com');
Query OK, 1 row affected (0.10 sec)

mysql> select * from AddressBook
    -> ;
+-----------+----------+--------------+----------+-------------+--------+-------------+---------------------+
| firstname | lastname | address      | city     | state       | zip    | phonenumber | email               |
+-----------+----------+--------------+----------+-------------+--------+-------------+---------------------+
| Shital    | Bhise    | Shivaji      | Digras   | Maharashtra | 445203 |    98342789 | Shivaji@gmail.com   |
| Shree     | shivaji  | Shivajishree | Dig      | Maharashtra | 446703 |    99347610 | Shree@gmail.com     |
| Anjali    | bhide    | AmbikaNagar  | nagpur   | Gujrat      | 789450 |    12345678 | Anjali@gmail.com    |
| Vaishnavi | bhosle   | bapunagar    | jaipur   | Rajastan    | 654321 |    98765432 | Vaishnavi@gmail.com |
| Shish     | Pachpor  | sainagar     | Benglore | Kernataka   | 445678 |    87654567 | Pachpor@gmail.com   |
+-----------+----------+--------------+----------+-------------+--------+-------------+---------------------+
5 rows in set (0.03 sec)

mysql>
mysql> update AddressBook set lastname='pachpor' where firstname='Shital';
Query OK, 1 row affected (0.16 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from AddressBook;
+-----------+----------+--------------+----------+-------------+--------+-------------+---------------------+
| firstname | lastname | address      | city     | state       | zip    | phonenumber | email               |
+-----------+----------+--------------+----------+-------------+--------+-------------+---------------------+
| Shital    | pachpor  | Shivaji      | Digras   | Maharashtra | 445203 |    98342789 | Shivaji@gmail.com   |
| Shree     | shivaji  | Shivajishree | Dig      | Maharashtra | 446703 |    99347610 | Shree@gmail.com     |
| Anjali    | bhide    | AmbikaNagar  | nagpur   | Gujrat      | 789450 |    12345678 | Anjali@gmail.com    |
| Vaishnavi | bhosle   | bapunagar    | jaipur   | Rajastan    | 654321 |    98765432 | Vaishnavi@gmail.com |
| Shish     | Pachpor  | sainagar     | Benglore | Kernataka   | 445678 |    87654567 | Pachpor@gmail.com   |
+-----------+----------+--------------+----------+-------------+--------+-------------+---------------------+
5 rows in set (0.00 sec)

mysql>
mysql> delete from AddressBook where lastname='shivaji';
Query OK, 1 row affected (0.20 sec)

mysql> select * from AddressBook;
+-----------+----------+-------------+----------+-------------+--------+-------------+---------------------+
| firstname | lastname | address     | city     | state       | zip    | phonenumber | email               |
+-----------+----------+-------------+----------+-------------+--------+-------------+---------------------+
| Shital    | pachpor  | Shivaji     | Digras   | Maharashtra | 445203 |    98342789 | Shivaji@gmail.com   |
| Anjali    | bhide    | AmbikaNagar | nagpur   | Gujrat      | 789450 |    12345678 | Anjali@gmail.com    |
| Vaishnavi | bhosle   | bapunagar   | jaipur   | Rajastan    | 654321 |    98765432 | Vaishnavi@gmail.com |
| Shish     | Pachpor  | sainagar    | Benglore | Kernataka   | 445678 |    87654567 | Pachpor@gmail.com   |
+-----------+----------+-------------+----------+-------------+--------+-------------+---------------------+
4 rows in set (0.00 sec)

mysql>
mysql> select * from AddressBook where city='Digras' or state='Kernataka';
+-----------+----------+----------+----------+-------------+--------+-------------+-------------------+
| firstname | lastname | address  | city     | state       | zip    | phonenumber | email             |
+-----------+----------+----------+----------+-------------+--------+-------------+-------------------+
| Shital    | pachpor  | Shivaji  | Digras   | Maharashtra | 445203 |    98342789 | Shivaji@gmail.com |
| Shish     | Pachpor  | sainagar | Benglore | Kernataka   | 445678 |    87654567 | Pachpor@gmail.com |
+-----------+----------+----------+----------+-------------+--------+-------------+-------------------+
2 rows in set (0.00 sec)

mysql>
mysql> select count(firstname) from AddressBook where city='jaipur';
+------------------+
| count(firstname) |
+------------------+
|                1 |
+------------------+
1 row in set (0.05 sec)

mysql> select city,count(firstname) from AddressBook group by city;
+----------+------------------+
| city     | count(firstname) |
+----------+------------------+
| Digras   |                1 |
| nagpur   |                1 |
| jaipur   |                1 |
| Benglore |                1 |
+----------+------------------+
4 rows in set (0.02 sec)

mysql>
mysql> select firstname,city from AddressBook order by city;
+-----------+----------+
| firstname | city     |
+-----------+----------+
| Shish     | Benglore |
| Shital    | Digras   |
| Vaishnavi | jaipur   |
| Anjali    | nagpur   |
+-----------+----------+
4 rows in set (0.03 sec)

mysql>

