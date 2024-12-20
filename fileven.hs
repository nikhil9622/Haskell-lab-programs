filterEven :: [Int] -> [Int]
filterEven list = filter odd list

main :: IO ()
main = do
    putStrLn "Enter a list of integers (separated by spaces):"
    input <- getLine
    let list = map read (words input) :: [Int]
    putStrLn $ "Filtered list (odd numbers only): " ++ show (filterEven list)
