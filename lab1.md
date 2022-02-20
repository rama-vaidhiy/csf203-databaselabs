# Lab 1

## Prerequisite:
You should ensure that you are able to connect to the virtual machines provided to you which has the basic mysql database setup for you. 
If in case you want to install one on your own systems, run the [setup](URL 'https://github.com/rama-vaidhiy/csf203-databaselabs/blob/main/setup.sql') sql script provided to create the necessary tables used in the labs.

## Theory:
SQL (Structured Query Language) is  

	a. A RDBMS programming language designed to define relational constructs (such as schemas and tables) and provide data manipulation capabilities.
  
	b. Does not exist outside of the RDBMS environment.
  
	c. Declarative type of language. (It instructs the database about what you want to do, and leaves details of implementation (how to do it) to the RDBMS itself.)
  
### Task 1.1: Exploring the MySQL Catalogue and schemas
The databases available to your user can be seen by using the command:

```
show databases;
```
_(commands in MySQL are terminated by a semi-colon)_

You then select the database you wish to use by using the command:

```
use databasename;
```

You have a database with your student ID (db_xxxxxx) and it is this database that you will be investigating.

To discover a list of tables, use the command
```
show tables;
```
To see a structure (or schema) for a specific tables use the command:
```
describe tablename; or
desc tablename;
```

Use this command to look at the structure of the two tables in your database. (NB: The table names are case sensitive).

**Question:** The type column shows the data type. What is the difference between int and float?
 
 ```
 
 
 ```
 
 
**Question:** What is the difference between char and varchar?
 
```


```
 
 
 
### Task 1.2: Simple Queries

The first SQL command which we will be investigating is select and during this lab we will be exploring some of the basic uses of the command:

```
select * from tablename;
select col1, col2, col3, ... from tablename;

```
Try the following with the table PROF.

```
select * from PROF;
select name,  rank, sal from PROF;
```

***Question:*** what does the * mean?

```


```
 
**_Try:_**
```
select sal, name, rank from PROF;
```

**Question:** How do the results from this select command differ from the previous query? What does this tell us about the columns listed in the select statement?
 
 ```
 
 
 ```
