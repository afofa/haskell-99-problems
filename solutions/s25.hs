import System.Random (randomRs)

rnd_select xs n = do
    gen <- getStdGen
    return $ take n [ xs !! x | x <- randomRs (0, (length xs) - 1) gen]

rnd_permu xs = rnd_select xs (length xs)