# Lab 8

In this lab you will be using your own database, db_xxxxxxxx.
In this lab we will be looking at some of the DDL (Data Definition Language) statements.
## DROP Table:
Once dropped, the table can’t be restored (unless it was part of a transaction). When you drop a table, you will also remove all the logical objects, like the indexes, associated with it. You also need to have the privileges to drop a table. DELETE statement removes the rows from the table, whereas the DROP statement removes the table itself. It is also a good practice to use DROP table statement before creating a new table so that we can be sure that we are not trying to use the name of a table which already exists. Note: If you are trying to drop a table which has a referential constraint then you cannot drop the table unless the constraints are dropped  or disabled.
Syntax: 
```
DROP TABLE [<database_name>].<table_name>;
```

## CREATE Table:
Once we have dropped the table successfully, we can (re)create the table. The table creation takes in a table name along with the various column names and their types.
The full syntax of CREATE TABLE statement can be found in the reference. But the minimal statement would look like this.
Syntax: 

```CREATE TABLE [<database_name>].<table_name> (
			[<column_name1> <column_type> NULL/NOT NULL,])
```

#### Try the following:
Once you have tried each of the statement, mark it as complete by selecting the checkbox. (This section is optional)

	A. We first drop any existing table of the same name. If the table doesn’t exist then it would return an error and that is OK. 
  
  ```
	drop table mybooks;
  ```
  
	B. Once we drop the table, we are now ready to create our new table.
  ```
	create table mybooks (bookId INT NOT NULL auto_increment PRIMARY KEY,
					title varchar(50) NOT NULL,
					isbn varchar(15) NULL,
					price decimal(10,2) not null
	);
  ```
  
	C. We can check our table's schema using describe statement.
	
  ```
  desc mybooks;
  ```
  
	D. We can enter some values into our table. In our case, we are not going to enter the value of ID as we have set it to auto increment. We will be using the 2nd syntax of insert statement where we specify the columns we are inserting.
	
  ```
  insert into mybooks (title, isbn, price) values('harry potter1',null, 10.2);
	insert into mybooks (title, isbn, price) values('harry potter2',null, 11.05);
	insert into mybooks (title, isbn, price) values('harry potter3',null, 15.22);
  ```
  
	E. We can verify the values inserted to the table by using the select statement. 

  ```
  select * from mybooks;
  ```
	
	
## ALTER Table:
Alter table statement is used to modify your table's schema. It does not allow you to modify a column's data type but you can drop the column and add the column again. The full syntax of the Alter table statement can be found in the reference.
You can also use the Alter table statement to add any constraints (primary, referential, domain etc.)

In our example, if we wanted to add a publisher name to our books, we can alter our table to add the new column. 

```
alter table mybooks add column publisher varchar(25) NULL;
```

You can then use the update statement to update the publisher column value for an individual row or the set of rows. 

We can also add constraints using alter statements. For example, if we created an authors table and we populate the mybooks with authorId for each of the books added, then we can specify the following. 

```
create table authors (id int not null auto_increment primary key,
						fname varchar(20) not null,
						lname varchar(20) not null
                        );
alter table mybooks add column authorId int not null;
insert into authors (fname, lname) values ('JK','Rowling');
update mybooks set authorId=1 where bookId>0;
alter table mybooks add constraint fk_author foreign key (authorId) references authors(id);

```

### Task 8.1: Creating tables (mandatory tasks)
***Question:*** Create a fridge table for a chain of supermarkets with attributes as follows:
> **Fridge:**
> 
> model, serialNumber, storeID, aisleLocation, cubicCapacity, energyRating, temperature.
> 
> The model/serialNumber is the primary key.
> 
> The storeID/aisleLoaction is a candidate key we also wish to support.
> 
> Temperature should be allowed to be a null value, whereas all other attributes should not allow null values. 
> 
> EnergyRating is usually “A” and this should be set as a default value.
> 

```


```

***Question:***  Use the desc command to check the schema.
```

```

***Question:*** Insert a series of rows (at least 6) into the fridge table and use the select command to ensure they have been inserted correctly. You should use energy ratings of A, B or C in your records, with at least one of each used.
```


```

***Question:*** Insert a row without specifying the EnergyRating, to ensure it automatically picks up the default value of “A”.

```


```


***Question:*** Try inserting a row which fails due to a duplicated primary key.

```


```


***Question:***  Try inserting a row which fails due to a duplicated candidate key (storeID/aisleLoaction).

```

```


***Question:***  Create a Food table for a chain of supermarkets with attributes as follows:
> **Food:**
> 
> barcodeNumber, description, storeID, aisleLocation, quantity, bestBeforeDate.
> 
> The storeID/barcodeNumber is the primary key.

> The storeID/aisleLocation is a foreign key referencing the Fridge table allowing for cascade deletion.
> 
> All attributes are mandatory (i.e. do not allow null values).
> 

```


```


***Question:***  Create a series of rows for the food table, ensuring the rows link to different fridges in different stores. Use select commands to check your data.

```


```


***Question:***  Create a select command which shows the all of the content of fridges with an energy rating of B.

```


```

***Question:*** Try updating the storeID on a fridge for a store which has no food (this should work). Use select to see the change.

```


```

***Question:*** Try updating the storeID on a fridge for a store which has food (this should not work – why?).

```


```


***Question:*** Try deleting a fridge which contains foods. You should find that (if your cascade has been set up correctly on the food table!) the fridge is deleted, plus the DBMS automatically deletes all food linked by the foreign key. Use select to prove the data has gone.

```


```
