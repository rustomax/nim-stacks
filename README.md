# nim-stacks
Pure Nim stack implementation based on sequences

* [Full documentation](https://rustomax.github.io/dev/nim/stacks/stacks.html)

Version 0.4.2

### Installation
```sh
nimble install stacks
```

### Example

```nim
import stacks

proc isPaired*(s: string): bool =
    ## Algorithm to detect unbalanced brackets using a stack
    var stack = Stack[char]()
    
    for c in s:
        case c:
            of '{': stack.push('}')
            of '[': stack.push(']')
            of '(': stack.push(')')
            of '}', ']', ')':
                if stack.isEmpty or stack.pop() != c: return false
            else: discard

    stack.isEmpty()

when isMainModule:
    assert isPaired("(((185 + 223.85) * 15) - 543)/2") == true
    assert isPaired("for (i = 1; i < 11; ++i)\n{printf(\"i\");}\nreturn 0;}\n}") == false
```

