# %v - Default format

How do I format any value in its default representation?

---

Use `%v` - a catchall for any type.

```go
fmt.Printf("I am %v years old\n", 10)
// I am 10 years old

fmt.Printf("I am %v years old\n", "way too many")
// I am way too many years old
```

## When to use
- Quick formatting, any type
- Catchall when you don't need specificity