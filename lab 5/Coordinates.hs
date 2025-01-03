-- Pattern Matching with Multiple Cases
-- Match against multiple patterns.
-- Write a function describePair :: (Int, Int) -> String that:
-- • Returns "Origin" if the pair is (0, 0).
-- • Returns "X-Axis" if the first element is 0 and the second element is any non-zero value.
-- • Returns "Y-Axis" if the second element is 0 and the first element is any non-zero value.
-- • Returns "Other" for all other pairs.

describePair :: (Int , Int) -> String
describePair (0 , 0) = "Origin"
describePair (0 , _) = "X-Axis"
describePair (_ , 0) = "Y-Axis"
describePair (x , y) = "Other"

main :: IO()
main = do
    print(describePair (0,0))
    print(describePair (0,7))
    print(describePair (1,0))
    print(describePair (4,6))