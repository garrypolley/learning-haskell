removeNonUppercase :: String -> String
removeNonUppercase st = [ c | c <- st, c `elem` ['A'..'Z']]   

addThree :: Num a => a -> a -> a -> a
addThree x y z = x + y + z  

factorial :: Integer -> Integer  
factorial n = product [1..n] 
