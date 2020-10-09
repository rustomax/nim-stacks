# To run these tests, execute `nimble test`.
import unittest
import stacks

test "can create an empty stack":
  var a = newStack[int]()
  check a.len() == 0

test "can create an empty stack with capacity":
  var a = newStack[int](capacity = 32)
  check a.len() == 0

test "can push into stack":
  var a = newStack[int]()
  a.push(10)
  check a.len == 1

test "can pop from non-empty stack":
  var a = newStack[int]()
  a.push(10)
  check a.pop() == 10
  a.push(11)
  check a.popUnsafe() == 11

test "can peek from non-empty stack":
  var a = newStack[int]()
  a.push(10)
  check a.peek() == 10
  check a.peekUnsafe() == 10

test "pop on empty stack raises exception":
  var a = newStack[int]()
  expect EStackEmpty:
    discard a.pop()

test "can clear stack":
  var a = newStack[int]()
  a.push(10)
  a.clear()
  check a.len() == 0
  check a.isEmpty() == true

test "can correctly check if stack is empty":
  var a = newStack[int]()
  a.push(10)
  check a.isEmpty() == false
  a.clear()
  check a.isEmpty() == true

test "can get sequence representation of the stack":
  var a = newStack[int]()
  a.push(10)
  a.push(20)
  a.push(30)
  check a.toSeq() == @[10, 20, 30]

test "can get string representation of the stack":
  var a = newStack[int]()
  a.push(10)
  a.push(20)
  a.push(30)
  check $a == "Stack[10, 20, 30]"
