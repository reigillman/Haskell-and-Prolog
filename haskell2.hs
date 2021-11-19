--Rei Gillman
--Haskell Assignment 2

--1
istrue v = length(filter (\x -> x== True) v)
  
--2
--No? I used filter to filter out the trues and used length to convert the return of an array
--to a number which tells you the exact amount of trues in the original array

--3
--Tail recursion is faster than normal recursion due to the complier 
--being able to automatcally able to convert code to iteration

--4
isthree v
  | v== [] = v
  | length(head v) == 3 =([head v ++ head v]) ++ isthree(tail v)
  | otherwise = isthree(tail v)
--5
nofive = [(x) | x <- [1 .. 40], x /= 5, x /= 10, x /= 15, x /= 20, x /= 25, x /= 30, x /= 35, x /= 40]
--I know this looks goofy but for the life of me I couldn't get any form of [5, 10 .. 40]
-- or x mod 5 = 0 working for me

--6
nopunc xs = filter (\x ->(x /= '?') && (x /= '.') && (x /= ',')) xs

--7
htmldec = map (\x -> ("<li>" ++ x ++ "</li>")) ["hat","shoes","belt","shirt","socks"]