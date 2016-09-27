--wierd n
--    | mod n 2 == 1 = "wierd"
--    | elem n [x | x <- [2..5]] = "not wierd"
--    | elem n [x | x <- [6..20]] = "wierd"
--    | n > 20 = "not wierd"

--getMultipleLines :: Int -> IO [String]
--getMultipleLines n
--    | n <= 0 = return []
--    | otherwise = do          
--        x <- getLine         
--        xs <- getMultipleLines (n-1)    
--        let ret = (x:xs)    
--        return ret          

--getInput = do
--    temp <- getLine
--    let n = read temp :: Int
--    n
--    --wierd n
