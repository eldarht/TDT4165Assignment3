# TDT4165Assignment3

## Task 1
b) Why are procedural abstractions useful?  Give at least two reasons.

```
Procedural abstractions are usefull to segment code, allowing the programmer to consider one unit at a time.

It also allows for greater reusability, as one does not need to rewrite the same procedure.
```

c) What is the difference between a procedure and a function?

```
A function is an linguistic abstraction of procedure that extends procedure with a return value.
```

## Task 3
d) For the Sum and Length operations, would left fold (a left-associative fold) and right fold give different results?  What about subtraction?

```
LeftFold would not make a difference with sum and length as they both use + as the math operand. a + b and b + a will always give the same answer. It would make a difference with subtraction as a - b gives a different answer than b - a if a is not equal to b.
```

e) What is a good value for U when using RightFold to implement the product of list elements?

```
U should be 1 as a * 1 = a. U should not have an effect other than returning the other operand itself.
```