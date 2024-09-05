possibleFactors :: Integer -> [Integer]
possibleFactors a = filter (\x -> x /= a && x /= 1) [1..ceiling $ sqrt $ fromIntegral a]

isPrime :: Integer -> Bool
isPrime a = case possibleFactors a of
    [] -> True
    _  -> and [mod a x /= 0 | x <- possibleFactors a]

getPrimeFactors :: Integer -> [Integer]
getPrimeFactors a = filter (\x -> mod a x == 0 && isPrime x) $ possibleFactors a

main :: IO ()
main = do
    print $ maximum $ getPrimeFactors 600851475143


