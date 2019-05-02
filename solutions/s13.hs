data ListItem a = Single a | Multiple Int a
    deriving (Show)

encodeDirect x = map makeSingle (foldr helper [] x)
    where
        makeSingle (1, x) = Single x
        makeSingle (n, x) = Mulitple n x
        helper x [] = [(1,x)]
        helper x (y@(a,b):ys)
            | x == b    = (1+a,x):ys
            | otherwise = (1,x):y:ys