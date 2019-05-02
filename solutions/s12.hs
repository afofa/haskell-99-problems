data ListItem a = Single a | Multiple Int a
    deriving (Show)

decodeModified x = concatMap decoder x
    where 
        decoder (Single a) = [a]
        decoder (Multiple n a) = replicate n a

decodeModified2 x = concat $ map decoder x
    where 
        decoder (Single a) = [a]
        decoder (Multiple n a) = replicate n a