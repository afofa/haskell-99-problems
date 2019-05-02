split x n = helper x [] n
    where
        helper (x:xs) y 1 = (y++[x], xs)
        helper (x:xs) y c = helper xs (y++[x]) (c-1)