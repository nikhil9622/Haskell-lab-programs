multiplyElements :: [Int] -> Int -> [Int]
multiplyElements list n = [x * n | x <- list]

main :: IO ()
main = do
    putStrLn "Enter a list of integers (separated by spaces):"
    input <- getLine
    let list = map read (words input) :: [Int]
    putStrLn "Enter a multiplier:"
    multiplier <- readLn
    putStrLn $ "Resulting list: " ++ show (multiplyElements list multiplier)
