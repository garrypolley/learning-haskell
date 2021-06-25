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
