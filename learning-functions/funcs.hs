lucky :: (Integral a) => a -> String
-- If you're lucky, it'll let you know
lucky 7 = "LUCKY NUMBER SEVEN!"
lucky x = "Sorry, you're out of luck, pal!"

factorial :: (Integral a) => a -> a  
-- This is factorial as defined in math, kinda sweet!
factorial 0 = 1  
factorial n = n * factorial (n - 1)  

addTorial :: (Integral a) => a -> a  
-- This is factorial as defined in math, kinda sweet!
addTorial 0 = 0 
addTorial n = n + addTorial (n - 1)  

myHead :: [a] -> a
-- Get the first element of a list
myHead [] = error "Eeek, you're headless"
myHead (a:_) = a

len :: Num p => [a] -> p
-- Get the length in a recurssive manner
len [] = 0
len (_:xs) = 1 + len xs

sumRecurssive :: Num p => [p] -> p
sumRecurssive [] = 0
sumRecurssive (x:xs) = x + sumRecurssive(xs)
