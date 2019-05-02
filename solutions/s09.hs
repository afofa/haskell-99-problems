import Data.List (group)

pack [] = []
pack (x:xs) = (x : takeWhile (==x) xs) : pack (dropWhile (==x) xs)

pack2 x = group x