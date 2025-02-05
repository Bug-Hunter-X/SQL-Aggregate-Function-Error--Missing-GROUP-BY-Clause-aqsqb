In SQL, a common yet subtle error arises when using aggregate functions (like SUM, AVG, COUNT, etc.) without a GROUP BY clause, particularly when selecting columns not included in the aggregate function.  This can lead to unexpected or incorrect results.

For example, consider a table named 'orders' with columns 'customerID', 'orderDate', and 'orderTotal'. The following query is flawed:

```sql
SELECT customerID, AVG(orderTotal) AS averageOrderTotal
FROM orders;
```

Without a `GROUP BY` clause, the database typically selects an arbitrary customer ID, pairing it with the average of all order totals.  If you intend to get the average order total per customer, the correct query would be:

```sql
SELECT customerID, AVG(orderTotal) AS averageOrderTotal
FROM orders
GROUP BY customerID;
```