sumTuple :: (Int, Int) -> Int
sumTuple (a, b) = a + b

main :: IO ()
main = do
    print (sumTuple (3, 5))   -- Expected Output: 8
    print (sumTuple (10, 20)) -- Expected Output: 30
