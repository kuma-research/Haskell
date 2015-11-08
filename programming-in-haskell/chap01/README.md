
# Chapter 01

In this chapter, the author simply reviews the basic principles of functional programming, and the background history. The most interesting idea lies in the explanation of the difference between imperative programming and functional programming: Functional programming encourages you to do programming in *functions*, and function is all about application. (This part might be revised later on).

## Exercises:

1. Just apply the outer double first, and then the inner one.
2. It's x
3. Product:
    
    product []     = 1
    product (x:xs) = x * (product xs)

4. It could be revised as:
  
    qsort [] = []
    qsort (x:xs)  = qsort larger ++ [x] ++ smaller
                    where 
                      larger  = [a | a <- xs, a >= x]
                      smaller = [b | b <- xs, b <  x] 

5. We'll lost one 2 in the final result. Just for the first step: You'll not put the second 2 in either the `larger` group nor the `smaller` group
