--Rei Gillman
--rgillman@muskingum.edu

multfunc x y --multiplies the successors of two numbers together
  = (succ x) * (succ y) 
 --(Num a, Enum a) => a -> a -> a
 --Input is num and enum is countable, referring to succ
 --output is of the same type. This is why a integer is returned.

implyfunc p q --shows whether or not p implies q
  |(p == True && q == True) || (p == False && q == False) || (p == False && q == True)  = True
  |otherwise  = False 
 --Bool -> Bool -> Bool
 --This function takes booleans as parameters and returns a boolean.

middlefunc x y z --shows middle of three numbers or if two or more numbers are repeated, shows repeated number
  | x > y && x < z  = x
  | y > x && y < z  = y
  | x == y || x == z = x
  | y == z || y == x = y
  | otherwise  = z
 --Ord a => a -> a -> a -> a
 --Ord just explains the importance of where the varaibles lie in
 --between the < and > symbols. The inputs are the same as 
 --the output as this function returns one of the three integers.

goldenfunc n --finds golden ratio of n but shows an error if this number is less than 1
  | (n > 1)   =  1 + 1 / (goldenfunc (n-1)) 
  | otherwise = error "Number is too small"
 --(Ord t, Fractional a, Num t) => t -> a
 --Ord explains that there is an order enforced in the function (n > 1)
 --A fractional (shown as a decimal) number is returned from an integer (t) input.

sumfunc a b --finds sum of two numbers ONLY if a > b
  | (a > b)     = a + (sumfunc (a-1) b)
  | otherwise   = error "a must be greater than b"
 --(Ord t, Num t) => t -> t -> t
 --Order is enforced (a > b) 
 --Output is same as input. Integer (t) is the input type for both variables and the output type is the same.
