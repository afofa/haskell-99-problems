myReverse [] = []
myReverse (x:xs) = myReverse xs ++ [x]

myReverse2 [] = []
myReverse2 x = last x : myReverse2 (init x)