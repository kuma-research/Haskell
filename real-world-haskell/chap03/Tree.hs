-- file: Chap03/Tree.hs
data Tree a = 
    Node a (Tree a) (Tree a)
  | Empty
    deriving (Show)

-- exercise 2.
data NewTree a = 
  NewNode a (Maybe (NewTree a)) (Maybe (NewTree a))
  deriving (Show)  

-- test
emptyNode = Nothing
singleNode = NewNode 1 emptyNode emptyNode
tripleNode = NewNode 3 (Just singleNode) (Just singleNode)