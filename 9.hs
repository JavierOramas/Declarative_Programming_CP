-- function that sums all elements in a list
sumList :: [Int] -> Int
sumList [] = 0
sumList (x:xs) = x + sumList xs

-- function that MULTIPLIES all elements in a list
multList :: [Int] -> Int
multList [x] = x
multList (x:xs) = x * multList xs

-- function that divides a list by an element and stores the rest of that division in a list
divList :: [Int] -> Int -> [Int]
divList [] _ = []
divList (x:xs) y = (x `mod` y) : divList xs y

-- function that returns the list of ths squares of a list
powList :: [Int] -> [Int]
powList [] = []
powList (x:xs) = (x ^ 2) : powList xs


-- function that checks if at least one element in a list is true
anyTrue :: [Bool] -> Bool
anyTrue [x] = x
anyTrue (x:xs) = x || anyTrue xs

-- function that checks if all elements in a list are true
allTrue :: [Bool] -> Bool
allTrue [x] = x
allTrue (x:xs) = x && allTrue xs

main = do
    print(powList [1,2,3,4,5])