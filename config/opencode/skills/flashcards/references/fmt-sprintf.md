# fmt.Sprintf()

How do I return a formatted string in Go?

---

Use `fmt.Sprintf()`.

```go
s := fmt.Sprintf("I am %d years old", 10)
// s == "I am 10 years old"
```

## When to use
- You need the formatted string as a value
- No newline by default