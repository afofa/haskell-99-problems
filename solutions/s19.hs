rotate list n 
    | n < 0 || n >= (length list) = rotate list (mod n (length list))
    | otherwise = rotater list n

rotater list 1 = (tail list) ++ [head list]
rotater list c = rotater ((tail list) ++ [head list]) (c-1)