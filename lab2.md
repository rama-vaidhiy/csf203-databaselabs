# Lab 2

### Remember:

Login to your MySQL server and choose your database (using use databasename).

If you forget the table names use the command to list the tablenames (using show tables).

### Task 2.1: Filtering:

```
select * from tablename where condition; 
```

For example:
```
select * from PROF where rank = “full”; 
select name from PROF where sal > 9000;
```
You can extend the where clause by adding AND and OR connectors for additional conditions. 

**Question:** Write queries for the PROF table as following:

a)    Show the names and salaries of all people who work in Computer Science.

```


```
 
b)    Show the name and rank of all people who earn less than 9000.

```


``` 
 
c)     Show the name and rank of all people who earn less than or equal to 9000.

```


```
 
d)    Show the names of all people who are full time computer scientists.
 
```


```

### Task 2.2: Ordering:

```
select * from tablename order by colname [ASC/DESC]; 
```

Try the following:

> a) select * form PROF order by sal;
> 
> b) select * from PROF order by sal desc; 
> 
> c) select * from PROF order by sal asc;
> 

**Question:** what does asc and desc mean? What is the default (as demonstrated in (a) above)?
 
```


```
 
If you need to use a “where” clause and an “order by” clause together, the “where” must come before the “order by”.

```
select name, dept, rank from PROF where sal > 7000 order by name desc;
```
 
