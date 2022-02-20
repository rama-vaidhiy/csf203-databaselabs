# Lab 7

In this lab you will be using your own database, db_xxxxxxxx.

### Task 7.1: Updating Data:

#### Syntax 1: 
```
update tablename set columname = value;
```
This will change the value of the named column in every row of the table. 

#### Syntax 2: 
```
update tablename set columname = value where condition;
```
This will change the value of the named column in all row of the table that meet the condition set in the where clause.

Use _select * from tablename;_ to remind yourself of the data held in the table. Also use this command after each step below to check your results.

***Question:*** Change the data so that everyone now works for department “FD”. 

```


```



***Question:*** We now wish to place Bob, Dorothy and Emily into the EE department. There are several versions of the where condition which will achieve this. Which one is more efficient?  

```


```


The values in columns can be modified rather than simply changed. For example, to give everyone in department EE at £50 bonus, we can use the command: 
```
update PROF set sal = sal + 50 where dept = “EE”;
```


***Question:*** Give everyone who is a "Full time staff" a 15% wage rise (yay!).  
```


```

It is also possible to update multiple column with a single update command using the syntax: 
```
update tablename set col1=value1, col2=value2, ... where condition; 
```


***Question:*** Bob needs to move to the FD department, be made full time and given a 20% wage rise. Create a suitable command to do this.

```


```

### Task 7.2: Deleting Data:

The delete data, the syntax is: 
```
delete from tablename;
```
or
```
delete from tablename where condition; 
```
Be very careful of the first option above, since not adding a restrictive “where” clause will make the DBMS delete ALL rows from the named table (and there is no UNDO). 

***Question:*** We have decided to sack the associates. Remove them from the database.

```


```


### Task 7.3: Inserting Data:

There are two ways to insert a new row:
#### Insert syntax 1:
```
insert into tablename values (val1, val2, val3, ... valn); 
```
To use this format, we must be familiar with the schema of the table (desc PROF;) since we are required to enter a value for each column of the table, in the correct order that the schema dictates. 


***Question:*** Create a row for Henry, with an id of 7, working for FD as an associate (asso) earning £15000.

```


```


#### Insert syntax 2: 
```
insert into tablename (col1, col2, col3,...) values (val1, val2, val3, ... valn); 
```
The advantage of this second syntax is that we can specify the order of the columns (and hence corresponding values), and if a table was defined with “default values” against a column, we would not need to name it, nor supply a value for that column in the insert.


***Question:*** Add another row for Shikar with an id of 8 adding additional data. Use insert syntax 2. 

```


```
