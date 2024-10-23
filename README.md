### Questions (Answer 10 Questions):

1. What is PostgreSQL?
   > Ans: PostgresSQL is an advanced RDMS. It supports both relational (SQL) and non-relational (JSON) queries. PostgreSQL also known as Postgres, Postgres known for its reliability, robustness, and advanced features. It supports a wide range of data types, complex queries, and ACID compliance.
2. What is the purpose of a database schema in PostgreSQL?
   > Ans: A schema in PostgreSQl defines the structure of a database. Schema is a logical container. It database objects such as tables, views, indexes, and functions. It helps in organizing, grouping objects and better management
3. Explain the primary key and foreign key concepts in PostgreSQL.
   - Primary Key: Its a unique identifier for each row in a table. It ensures data integrity by preventing duplicate entries. It helps in indexing and efficiently querying data.
   - Foreign Key: Foreign key is a column that establishes a relationship between two tables. It refers to the primary key of another table.
4. What is the difference between the VARCHAR and CHAR data types?
   - VARCHAR: Stores variable-length character strings. By using VARCHAR defined the size of the field.
   - CHAR: Stores fixed-length character strings by predefined maximum length.
5. Explain the purpose of the WHERE clause in a SELECT statement.
   > Ans: The WHERE clause filter records that meet specific conditions in a SELECT statement based on specified conditions.
6. What are the LIMIT and OFFSET clauses used for?
   - Limit: Limit used for limiting the maximum number of rows to be returned by a query.
   - Offset: Offset user for indicates the starting position from which to retrieve rows.
7. How can you perform data modification using UPDATE statements?
   > Ans: UPDATE statement used to modify existing data in a table. Using SET Method we can update by specify the table name, the columns to be updated by WHERE clause.
8. What is the significance of the JOIN operation, and how does it work in PostgreSQL?
   > Ans: JOIN operation combine rows from two or multiple tables based on related columns. It allows to retrieve data from multiple tables in a single query. There is various types of JOIN:
   - INNER JOIN
   - LEFT JOIN
   - RIGHT JOIN
   - FULL JOIN
9. Explain the GROUP BY clause and its role in aggregation operations.
   > Ans: The GROUP BY clause is used to group rows based on specific columns same values. We can use aggregate function with it like COUNT, AVG, SUM etc.
10. How can you calculate aggregate functions like COUNT, SUM, and AVG in PostgreSQL?
    > Ans: Aggregate functions in PostgreSQL are used to calculate multiple rows of data or summary statistics on dataset.
    - COUNT(): Returns the number of rows.
    ```
    SELECT COUNT(*) FROM students;
    ```
    - SUM(): Returns the total sum of a numeric column.
    ```
    SELECT SUM(credits) FROM courses;
    ```
    - AVG(): Returns the average value of a numeric column.
    ```
    SELECT AVG(frontend_mark) FROM students;
    ```
11. What is the purpose of an index in PostgreSQL, and how does it optimize query performance?
    > Ans:
12. Explain the concept of a PostgreSQL view and how it differs from a table.
    > Ans:
