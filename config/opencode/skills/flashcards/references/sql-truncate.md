# SQL Example

How to empty a table without deleting its schema?

---

```sql
TRUNCATE TABLE table_name;
```

## When to use
- You want to delete all rows but keep the table structure
- Faster than `DELETE FROM table_name`