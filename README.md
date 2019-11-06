# nim-stacks
Pure Nim stack implementation based on sequences

[![Build Status](https://travis-ci.org/rustomax/nim-stacks.svg?branch=master)](https://travis-ci.org/rustomax/nim-stacks)

* [Full documentation](https://rustomax.github.io/dev/nim/stacks/stacks.html)

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
                if stack.empty or stack.pop() != c: return false
            else: discard

    stack.empty()

when isMainModule:
    assert isPaired("(((185 + 223.85) * 15) - 543)/2") == true
    assert isPaired("for (i = 1; i < 11; ++i)\n{printf(\"i\");}\nreturn 0;}\n}") == false
```

