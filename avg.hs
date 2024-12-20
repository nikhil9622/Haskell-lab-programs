averageMarks :: (String, Int, [Int]) -> (String, Double)
averageMarks (name, _, marks) = (name, fromIntegral (sum marks) / fromIntegral (length marks))

main :: IO ()
main = do
    let students = [("Alice", 1, [85, 90, 78]), ("Bob", 2, [70, 75, 80]), ("Charlie", 3, [88, 92, 84])]
    let results = map averageMarks students
    putStrLn "Student names and their average marks:"
    mapM_ (\(name, avg) -> putStrLn $ name ++ ": " ++ show avg) results
