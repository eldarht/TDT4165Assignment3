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
LeftFold would not make a difference with sum and length as they both use + as the math operand. 
a + b and b + a will always give the same answer. It would make a difference with subtraction,
as a - b gives a different answer than b - a if a is not equal to b.
```

e) What is a good value for U when using RightFold to implement the product of list elements?

```
U should be 1 as a * 1 = a. U should not have an effect other than returning the other operand itself.
```

## Task 5
b) Give a high-level description of your solution and point out any limitations you find relevant.

```
The function as I have implemented it returns the input number and a function wrapped in a tuple.
The function is equivalent to the LazyNumberGenerator function but has no output. 
Instead the input is replaced by changing the actual implimentation with one calling the LazyNumberGenerator with the next number to return,
so that it returns the relevant number and a function that again returns the next number. 

Limitations:
The function does not really return a list as the task asks for but one that can generate one.
It is not possible to call it with {LazyNumberGenerator 0}.2.2.2.2.1 like a list,
as the function would have to be called.
```

## Task 6
a) Is your Sum function from Task 2 tail recursive?
If yes, explain why. If not, implement a tail recursive version and explain how your changes made it so.

```
My function is not tail recursive as it runs H+{Sum T}. 
This means that it must execute {Sum T} in order to get the second operand needed for the + operator.
It will be head recursive as it recurses and then adds. 

My {SumTail T Operand} is a tail recursive version. 
It is tail recursive as the last thing it does befre returning is calling itself. 
The implementation changes from the original by propagating the sum of the previous numbers downwards in the recursion.
This version would be a left fold, not a right fold.
```

b) What is the benefit of tail recursion in Oz?
```
In this case, I do not know if there is a benefit as that would require indepth understanding of the OZ implementation. 
I do know that OZ does some tail-recursive optimization. 
One optimization that could be possible would be to drop the stack-frame requiered by most functions to store local variables/environments. 

In other scenarios such as for graph traversal, the difference between a head-recursive and tail-recursive traversal can be the same as breadth first and bepth first.
A depth first would generally allow for less stackframes.
```

(c) Do all programming languages that allow recursion benefit from tail recursion?  Why/why not?

```
The question is not if the programming language benefits, but rather if the compiler/implementation makes use of it. 
It is entierly possible for one compiler to implement tail-recursion optimization while an other does not.
Therefore benefiting some, but not all. 
```
