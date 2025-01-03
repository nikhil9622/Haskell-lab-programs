-- Pattern Matching with Simple List Processing
-- Objective: Process lists using pattern matching.
-- Write a function firstTwoElements :: [a] -> [a] that:
-- • Returns the first two elements of the list if it has two or more elements.
-- • Returns the entire list if it has fewer than two elements.

firstTwoElements :: [Int] -> [Int]
firstTwoElements [] = []
firstTwoElements [x] = [x]
firstTwoElements (x:y:xs) = [x,y]

main :: IO()
main = do
    print(firstTwoElements [])
    print(firstTwoElements [5])
    print(firstTwoElements [2,4,6,8])