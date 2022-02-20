# Lab 3

### Remember:
SELECT is the most commonly used DML (Data Manipulation Language) command used for queries.

General syntax is:
```
SELECT [clause options] columns list [FROM table_name] [other clauses]
```

So far we have seen the following clauses:

>	• **WHERE** to filter the rows based on a criteria
>	• **ORDER BY** to sort the rows in a specified order

The WHERE clause can use the following operators:

>	• **Arithmetic:** + , - , %, *, / , DIV, MOD
>	
>	• **Logical:** AND, OR, NOT, XOR
>	
>	• **Comparison:** <, <= , >, >=, !=,  <> (same as != which means not equal to), BETWEEN, <=> (null safe), IS, IS NOT, IS NOT NULL, IS NULL etc.
>	
	
More can be found in the MySQL manual. 

### Task 3.1: Aggregation:
SQL enables us to achieve summary information. Try out the following: 

```
select name, sal from PROF; 
```
From this we can see that Calvin is paid the highest salary. It is easy to see this when we have only six tuples. You will shortly be using a database with many thousands of records, and using a visual technique would be less easy. 
Now try:
```
select max(sal) from PROF;
```
Here we have used the max function which returns the same value as earlier. Do not worry about the name yet. We will come to it later. If we want to get an aggregate value of a set of column values we can use the handy functions provided by SQL. 
The list of aggregate functions supported by MySQL are listed in the manual.
 
Using functions, find out the minimum salary. If you cannot guess the function name, look it up! 
```


```


You can try out other such aggregation commands like finding out the total salary bill, or the average salary etc. 
```


```



### Task 3.2: Adding Columns:
We can add additional “derived” columns to our results. 
If we were investigating the option of giving everyone a 12.5% wage rise, we could use the command: 
```
select name, sal, sal * 1.125 from PROF; 
```
This adds a new column of “sal * 1.125”. 

**Question:** Write a query which shows the salary, the salary with a 10% rise and the salary with a 12.5% rise and a 15% rise as a single select statement. 

```


```


If a column holds numeric data, we can use the numeric functions to manipulate the result of the computation. For e.g. if we want to round the increased salary to the nearest highest integer then we can do the following
```
select name, sal, sal * 1.125, ceil(sal * 1.125) from PROF;  
```

The ceil function will round the value to the nearest highest integer and returns the same. 
More numerical functions are available in the manual. 

Now, rewrite the above query to use round, floor, ceil etc. and verify the effect.

```


```

### Task 3.3: Changing Titles:

From the previous queries we see that the result of the query is shown as below

| name | sal | sal * 1.125 | ceil(sal * 1.125) |
| --- | --- | --- | --- |
| 'Adam' |  '6000' | '6750' | '6750' |
|'Bob' | '8000' | '9000' | '9000' |
|'Calvin'| '10000'| '11250'| '11250' | 
|'Dorothy'| '5000'| '5625'| '5625' |
|'Emily'| '8500'| '9562.5'| '9563' |
|'Frank'| '9000'| '10125'| '10125' |

We see that the title of the columns that were added as part of the numeric functions are not very intuitive. They show the functions used and hence not very meaningful. We can rename a column but assigning them meaningful names by using as <newname> clause. 

For example: 
  
```
  select name as "Employee Name", dept as Department, sal as Salary from PROF;
```
  
Notice the use of quotation marks if a column is renamed to something which includes spaces (i.e. Employee Name). The name assigned to a column using "as" is called an Alias. 
  
  
**Question:** Rewrite your select of employees with salaries, with 10%, 12.5% and 15% so that the columns have better names. 
  
```
  
  
```
**Word of caution:** The alias cannot be used in Where clause. For e.g. the following statement will throw an error.

  ```
  select name as 'Employee Name', dept as Department, sal as Salary from PROF where Salary > 10000;
  ```
But you can use the alias in GROUP BY, ORDER BY, or HAVING clauses which we will see in the upcoming weeks. 

Remember you can also create an Alias for your Tables too. 
```
  SELECT name, dept, sal from Prof p where p.sal > 10000;
```
