# Lab 4

### Remember:
SELECT is the most commonly used DML (Data Manipulation Language) command used for queries.

General syntax is:
```
SELECT [clause options] columns list [FROM table_name] [other clauses]
```

So far we have seen the following clauses:

	• WHERE to filter the rows based on a criteria
	• ORDER BY to sort the rows in a specified order

We have seen how to use aggregate functions, add additional columns, use ALIAS'es for columns in the previous lab. 

### Task 4.1: Limiting Output:

Adding the clause limit n at the end of a select causes the output to be limited to the n tuples.  
```
SELECT [clause options] columns list FROM tablename WHERE condition [other clauses] LIMIT [skipcount,] n
```
Where skipcount is the number of rows to skip in the resultset before starting the resultset and n is the number of rows to output from the resultset.

**Question:** Write a query to get the total row count of PROF table. You need to show only the row count. 

```

```

 What does the following SQL statement return? 
 ```
 SELECT * from PROF LIMIT 3,2;
 ```

```

```


How is the above statement different from 
```
SELECT * from PROF LIMIT 2;
```

```


```


### Task 4.2: Using Wildcards:

We have seen we can have selections with where conditions on text, such as 
```
select * from PROF where name = 'Calvin';
```
Rather than using the = sign, using the keyword LIKE enables us to use the % and _ wildcard characters. 
**% means any number of any characters, whereas _ means any single character.***
```
select * from PROF where name like 'c%';  --> This returns all people with name that starts with a c. 
```

***Question:*** What does the following return?  
```
select * from PROF where name like '%a%'; 
```
```


```

***Question:*** What would the following return? 
```
select * from PROF where name like '_a%'; 
```

```


```

### Task 4.3: Queries the Employees Database

Let us put your SELECT statement knowledge to test. 

Switch to the ***ro_employees*** database 
```
use ro_employees; 
```
***Question:*** Find out the names of the tables. 

```


```

***Question:*** Find out the names of the columns within the employee table. 

```


```

***Question:*** Create a query that lists the names of all employees whose first name starts with the letter x. 

```


```

***Question:*** Create a query that lists details of female employees, born in 1961 who last name starts with the letter u. 

```


```


***Question:*** Create a query to show the 5 most recently hired employees. 

```


```
