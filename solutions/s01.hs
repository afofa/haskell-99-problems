myLast [x] = x
myLast (_:xs) = myLast xs

myLast2 x = head $ reverse x

myLast3 = head . reverse