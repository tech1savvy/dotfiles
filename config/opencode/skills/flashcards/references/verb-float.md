# %.nf - Float format

How do I format a float with specific decimal places in Go?

---

Use `%.nf` where `n` is the number of decimal places.

```go
fmt.Printf("I am %.2f years old\n", 10.523)
// I am 10.52 years old
```

## When to use
- Control precision of floats
- `%.0f` for no decimals, `%.2f` for 2 decimals, etc.