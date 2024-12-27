-- Function to calculate tax under the Old Tax Regime
calculateOldTax :: Double -> Double
calculateOldTax income
    | income <= 250000 = 0
    | income <= 500000 = 0.05 * (income - 250000)
    | income <= 1000000 = 0.05 * (500000 - 250000) + 0.20 * (income - 500000)
    | otherwise = 0.05 * (500000 - 250000) + 0.20 * (1000000 - 500000) + 0.30 * (income - 1000000)

-- Function to calculate tax under the New Tax Regime
calculateNewTax :: Double -> Double
calculateNewTax income
    | income <= 250000 = 0
    | income <= 500000 = 0.05 * (income - 250000)
    | income <= 750000 = 0.05 * (500000 - 250000) + 0.10 * (income - 500000)
    | income <= 1000000 = 0.05 * (500000 - 250000) + 0.10 * (750000 - 500000) + 0.15 * (income - 750000)
    | income <= 1250000 = 0.05 * (500000 - 250000) + 0.10 * (750000 - 500000) + 0.15 * (1000000 - 750000) + 0.20 * (income - 1000000)
    | income <= 1500000 = 0.05 * (500000 - 250000) + 0.10 * (750000 - 500000) + 0.15 * (1000000 - 750000) + 0.20 * (1250000 - 1000000) + 0.25 * (income - 1250000)
    | otherwise = 0.05 * (500000 - 250000) + 0.10 * (750000 - 500000) + 0.15 * (1000000 - 750000) + 0.20 * (1250000 - 1000000) + 0.25 * (1500000 - 1250000) + 0.30 * (income - 1500000)

-- Main function to calculate tax based on the regime selected
main :: IO ()
main = do
    putStrLn "Enter your annual income:"
    incomeStr <- getLine
    let income = read incomeStr :: Double

    putStrLn "Choose your tax regime (1 for Old Tax Regime, 2 for New Tax Regime):"
    regimeStr <- getLine
    let regime = read regimeStr :: Int

    let tax = case regime of
                1 -> calculateOldTax income
                2 -> calculateNewTax income
                _ -> error "Invalid choice"

    putStrLn ("Your calculated tax is: " ++ show tax)

