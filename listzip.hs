listZipWith :: (a -> b -> c) -> [a] -> [b] -> [c]
listZipWith f xs ys = [f x y | (x, y) <- zip xs ys]

main :: IO ()
main = do
    putStrLn "Enter the first list (separated by spaces):"
    input1 <- getLine
    let list1 = map read (words input1) :: [Int]
    putStrLn "Enter the second list (separated by spaces):"
    input2 <- getLine
    let list2 = map read (words input2) :: [Int]
    putStrLn $ "Resulting list (sum of corresponding elements): " ++ show (listZipWith (+) list1 list2)
