reverseList :: [a] -> [a]
reverseList [] = []
reverseList (x:xs) = reverseList xs ++ [x]

main :: IO ()
main = do
    putStrLn "Enter a list of integers (separated by spaces):"
    input <- getLine
    let list = map read (words input) :: [Int]
    putStrLn $ "Reversed list: " ++ show (reverseList list)
