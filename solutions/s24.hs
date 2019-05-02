import System.Random (randomRs)

rnd_select xs n = do
    gen <- getStdGen
    return $ take n [ xs !! x | x <- randomRs (0, (length xs) - 1) gen]


diff_select n m = rnd_select [1..m] n