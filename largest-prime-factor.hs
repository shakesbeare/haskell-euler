sqrtInt :: Integer -> Integer
sqrtInt a = ceiling $ sqrt $ fromIntegral a

possibleFactors :: Integer -> [Integer]
possibleFactors a = filter (\x -> x /= a && x /= 1) [1..sqrtInt a]

isDivisible :: Integer -> Integer -> Bool
isDivisible a b = mod a b == 0

isPrime :: Integer -> Bool
isPrime a = case possibleFactors a of
    [] -> True
    _  -> and [not $ isDivisible a x | x <- possibleFactors a]

getPrimeFactors :: Integer -> [Integer]
getPrimeFactors a = filter (\x -> isDivisible a x && isPrime x) $ possibleFactors a

main :: IO ()
main = do
    print $ maximum $ getPrimeFactors 600851475143

