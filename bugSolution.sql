The solution involves adding a `GROUP BY` clause to specify how the data should be grouped before applying the aggregate function.  The corrected SQL query to calculate the average order total for each customer is:

```sql
SELECT customerID, AVG(orderTotal) AS averageOrderTotal
FROM orders
GROUP BY customerID;
```
This ensures that the average order total is correctly calculated for each distinct customerID.