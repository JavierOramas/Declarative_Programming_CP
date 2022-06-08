-- function that generates Collatz Sequence for a given number

collatz :: Int -> Int
collatz 1 = 1
collatz n =
    if (n `mod` 2) == 0
        then (n `div` 2)
    else (3 * n + 1)

collatzSeq :: Int -> [Int]
collatzSeq(n) = 
    if (n == 1)
        then [1]
    else [n] ++ collatzSeq (collatz n)

-- function that returns a list with all the collatz sequences between 1 and n with length m
collatzSeqLength :: Int -> Int -> [[Int]]
collatzSeqLength n m =
    if (n == 0)
        then []
    else if (length (collatzSeq n)) == m
        then [collatzSeq n] ++ collatzSeqLength (n - 1) m
    else collatzSeqLength (n - 1) m

main = do
    print(collatzSeqLength 10 6)