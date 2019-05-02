dropEvery x n = drop x n n
    where
        drop [] _ _ = []
        drop (x:xs) n 1 = drop xs n n
        drop (x:xs) n c = x : (drop xs n (c-1))