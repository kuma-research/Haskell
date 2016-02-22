-- file: chap03/ListADT.hs

-- List is recursive as `List a` shows both on the left and the right side of =
data List a = 
    Cons a (List a)
  | Nil 
    deriving (Show)

-- exercise 1.
fromList :: (List a) -> [a]
fromList (Cons x xs) = x : (fromList xs)
fromList Nil = []

-- tests
nilList = fromList Nil -- should return []
oneElemList = fromList (Cons 1 Nil) -- should return [1]
twoElemsList = fromList (Cons 1 (Cons 2 Nil)) -- should return [1, 2]

