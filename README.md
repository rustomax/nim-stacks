# nim-stacks
Pure Nim stack implementation based on sequences

* [Full documentation](https://rustomax.github.io/dev/nim/stacks/stacks.html)

### Example

```nim
# Reverting a string using a stack
import stacks

let a = "Hello, World!"
var s = Stack[char]()

for letter in a:
    s.push(letter)

var b: string
while not s.empty:
    b.add(s.pop)

assert b == "!dlroW ,olleH"
```

