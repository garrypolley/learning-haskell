doubleMe x = x + x  

doubleUs x y = doubleMe x + doubleMe y

doubleSmallNumber x = if x > 100  
                        then x  
                        else x*2 

boomBangs xs = [ if x < 10 then "BOOM!" else "BANG!" | x <- xs, odd x]   


multiFilter = [ x | x <- [10..20], x /= 13, x /= 15, x /= 19] 
