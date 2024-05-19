-- List comprehension [ out | var <- some_iterator, filter(s) ]
--     exclusive ranges?
main :: IO()
main = do
    print $ sum [x | x <- [0..(1000 - 1)], mod x 5 == 0 || mod x 3 == 0]

