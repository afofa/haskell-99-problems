import Data.List (group)

encode [] = []
encode (x:xs) = (length (x : takeWhile (==x) xs), x) : encode (dropWhile (==x) xs)

encode2 x = map (\y -> (length y, head y)) (group x)