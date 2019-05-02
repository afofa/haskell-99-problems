myButLast = last . init

myButLast2 x = (reverse x) !! 1

myButLast3 = head . tail . reverse