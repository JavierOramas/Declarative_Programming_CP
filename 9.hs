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

-- function that given a list of lists returns a lits with its lenghts
lenList :: [[a]] -> [Int]
lenList [] = []
lenList (x:xs) = length x : lenList xs

-- fucntion, given a list of pairs returns a list with the pairs that its first element is bigger than 3*second
biggerThan3 :: [(Int, Int)] -> [(Int, Int)]
biggerThan3 [] = []
biggerThan3 (x:xs) = if (fst x) > (3 * (snd x)) then x : biggerThan3 xs else biggerThan3 xs

-- filter list and return only the even elements
evenList :: [Int] -> [Int]
evenList [] = []
evenList (x:xs) = if (x `mod` 2) == 0 then x : evenList xs else evenList xs

-- given a char check if its a valid letter
isLetter :: Char -> Bool
isLetter x = if (x >= 'a' && x <= 'z') || (x >= 'A' && x <= 'Z') then True else False

-- given a list of chars, return th ones that are letters
letters :: [Char] -> [Char]
letters [] = []
letters (x:xs) = if isLetter x then x : letters xs else letters xs

-- from a list o lists return a list with the lists that have mor than n elements
moreThanN :: [[a]] -> Int -> [[a]]
moreThanN [] _ = []
moreThanN (x:xs) n = if length x > n then x : moreThanN xs n else moreThanN xs n

main = do
    print(powList [1,2,3,4,5])