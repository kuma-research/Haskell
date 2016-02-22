-- file: chap03/BookStore.hs

-- BookInfo is a **type constructor**
-- Book is a **value constructor**
-- Int String [String] are components

data BookInfo = Book Int String [String]
                deriving (Show)

-- type synonyms
type CustomerID = Int
type ReviewBody = String

data BookReview = BookReview BookInfo CustomerID ReviewBody

type BookRecord = (BookInfo, BookReview)

myInfo = Book 123 "Algebra of Programming"
          ["Richard Bird", "Oege de Moor"]

-- algebraic data type
type CardHolder = String
type CardNumber = String
type Address = [String]

data BillingInfo = 
    CreditCard CardNumber CardHolder Address
  | CashOnDelivery
  | Invoice CustomerID
    deriving (Show)

-- pattern matching
bookID      (Book id _ _) = id
bookTitle   (Book _ title _) = title
bookAuthors (Book _ _ authors) = authors

-- record syntax
data Customer = Customer { 
  customerID      :: CustomerID,
  customerName    :: String,
  customerAddress :: Address
} deriving (Show)
