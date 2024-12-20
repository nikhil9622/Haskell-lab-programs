swapTuple :: (a, b) -> (b, a)
swapTuple (a, b) = (b, a)

main :: IO ()
main = do
    putStrLn "Enter a tuple (a, b):"
    input <- getLine
    let tuple = read input :: (Int, Int)
    putStrLn $ "Swapped tuple: " ++ show (swapTuple tuple)
