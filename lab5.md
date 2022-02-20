# Lab 5

## Grouping:

The aggregate functions like avg, count, min, max etc are often used in conjunction with GROUP BY clause. 

This clause is usually used for summarizing across the groups of related data.

Here is an example:
We are using _ro_employees_ for our example.

There is a table called _titles_. This table lists the title of each employee, the from and to date when they held that title.

If we want to check the list of titles (distinct is used to eliminate the duplicate values because more than one employees might have the same title) we use the following query:
```
select distinct title from titles;
```
Now that we know the list of distinct titles, we can also see how many entries are there in this table by using the aggregation function count.
```
select count(emp_no) from titles;
```
This query returns the list of rows in the table titles. 

Now if we wanted to know how many employees have been assigned a specific title, it is difficult to do it only with the existing aggregation function as the rows are not categorized into groups before the aggregation function is applied. This is where the GROUP By clause comes in handy.
```
select count(emp_no), title from titles GROUP BY title;
```
Now with this group by clause added to the query, we get the number of employees who have held a specific title. The Group by clause can also have more than one column names in it. 

If we want to include the WHERE clause we can do so before using the GROUP BY clause.
```
SELECT …. FROM …. WHERE …. GROUP BY ….
```
Also remember that if you use an alias for the column names the same aliases can be used in the GROUP BY clause.
E.g. (look at the alias T)
```
select count(emp_no), title T from titles GROUP BY T;
```
Note:
The column(s) used in the GROUP BY clause should be listed in the SELECT clause.

### Task 5.1: Grouping:

***Question:*** Find out how many employees have had a job title of “Engineer”. 


```


```

***Question:*** Find out how many are currently employed as engineers. (Hint: look at how the to_date is set for currently employed engineers)


```


```

***Question:*** Repeat the above query (use wildcards) to include all grades of engineers. 

```


```


## Having:
The GROUP BY clause can be accompanied by a HAVING clause. The HAVING clause is used to filter the results of the GROUP BY clause. It is where we can add a predicate to the categorized results.
```
SELECT … FROM … WHERE … GROUP BY … HAVING ….
```
Similar to the GROUP BY clause, the aliases can be used in the HAVING clause too. 

From the above GROUP BY clause if we want to filter and see how many employees have held the title of Manager, we write the query as: (notice the use of alias T in the query)
```
SELECT count(emp_no), title T FROM titles GROUP BY T HAVING T='Manager';
```
HAVING clause has the same effect on groups as the WHERE clause has on the selected tuples.

### Task 5.2: Having:

***Question:*** Find out which departments employ more than 25000 employees. 


```


```

***Question:*** Find out how the number of employees hired each year after 1995.

```


```

