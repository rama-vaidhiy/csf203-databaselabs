# Lab 10

## Query within a Query:

 Sometime it is necessary to find out an answer from one select and use it to feed into another select. (The one in bold is the subquery)

```
select col1, col2, … from tablename where colx = (select ….. from tablename where … ); 
```

The subquery in the above example syntax would need to return exactly one column which could be matched with the colx on the where condition of the main query. 

Use select * from PROF to remind yourself of the data. 


### Task 10:1 

***Question:*** Create a query which shows the names and salaries of all PROF rows where the person earns more than the average of all profs. Hint: your subquery should return the average. 

```


```

**Referencing a table twice:**

You can reference a table to itself and use the same table twice in a SELECT query.

### Task 10:2

If this is not already in your database, then you need to ensure to create them.

```
Create a table called emp. It should have the following columns: 
 
a) id (integer) – mandatory (i.e. not null) 
b) name (varchar) – mandatory 
c) manager (integer) – optional (i.e. some employees will not have managers) 

```

The id should be the primary key and the manager should be set as a foreign key referencing the id of the emp table (i.e. a relationship connecting the table to itself). 


***Question:*** Check your work carefully before continuing to ensure the table is correctly set up covering each point above. Do not continue until the table definition is correct. Drop the table and re-create it if necessary. 

Insert the following data into your table: 		
|Id | 	Name |	Manager |
| --- | --- | --- |
| 1 |	Pedro 	|
| 2 | 	Cate 	|
| 3 |	Aggie  |	1  |
| 4  |	Lotvig |	2 |
| 5 | Cyd |	2 |
| 6 |	Kuon |	1  |
| 7 |	Jano |	1 |
| 8 |	Karl |	2 |
| 9 |	Verna |	
| 10 |	Spirot |	2 |
| 11 |	Dora |	2 |
| 12 | Phanyot |	2 |

### Task 10:3

We wish to create a query which shows the names of the employees and their associated manager (Hint: join the emp table to itself by referencing the table twice in the FROM clause – don’t forget to rename the table to avoid syntax issues) 

```

```

Check your results carefully by referencing the original base data. 

***Question:*** What did you notice about the results for Verna? Explain why this is the case. 

```


```


***Question:*** Why where there no results showing Pedro, Cate and Verna as employees. 

```


```


***Question:*** Create a query which provides the names of managers who manage more than 3 people.

```


```

