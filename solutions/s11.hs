import Data.List (group)

data ListItem a = Single a | Multiple Int a
    deriving (Show)

encode2 x = map (\y -> (length y, head y)) (group x)

encodeModified [] = []
encodeModified x = map encoder (encode2 x)
    where
        encoder (1, x) = Single x
        encoder (n, x) = Multiple n x

encodeModified2 xs = [y | x <- group xs, let y = if (length x) == 1 then Single (head x) else Multiple (length x) (head x)]