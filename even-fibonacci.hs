fibsUntil :: Integer -> [Integer]
fibsUntil a = aux a []

aux :: Integer -> [Integer] -> [Integer]
aux a b = case a of 
    1 -> [1, 1]
    _ -> sum (getFirstTwo c) : c 
        where c = aux (a - 1) b

getFirstTwo :: [Integer] -> [Integer]
getFirstTwo x = case x of
    (x:y:xs)  -> [x, y]
    []        -> error "Cannot apply to length 0"
    x         -> error "Cannot apply to length 1"

evenFibs :: Integer -> [Integer]
evenFibs a = [x | x <- fibsUntil a, even x]

answer = sum $ filter (< 4_000_000) (evenFibs 1000)


-- Can also choose to nest function definitions in where clause
--
-- fibsUntil :: Integer -> [Integer]
-- fibsUntil a = aux a []
--     where 
--         aux a b = case a of
--             1 -> [1, 1]
--             _ -> sum (getFirstTwo c) : c 
--               where 
--                   c = aux (a - 1) b
--                   getFirstTwo x = case x of
--                       (x:y:xs)  -> [x, y]
--                       []        -> error "Cannot apply to length 0"
--                       x         -> error "Cannot apply to length 1"
