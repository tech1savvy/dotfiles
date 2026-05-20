# What are computed constants in Go?

---

Constants can be computed from other compile-time constants:

```go
const firstName = "Lane"
const fullName = firstName + " " + "Wagner"
```

But runtime values break the compiler:

```go
const currentTime = time.Now() // ERROR
```

**Key insight**: If it can't be evaluated at compile time, it can't be a constant.
