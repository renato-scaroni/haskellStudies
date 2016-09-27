-- Problem: https://www.hackerrank.com/challenges/30-conditional-statements?h_r=email&unlock_token=0ffa35ffca0a3dc4214db15a493ad2b4d4da541c&utm_campaign=30_days_of_code_continuous&utm_medium=email&utm_source=daily_reminder
import System.IO

wierd n
    | mod n 2 == 1 = "Wierd"
    | elem n [x | x <- [2..5]] = "Not Wierd"
    | elem n [x | x <- [6..20]] = "Wierd"
    | n > 20 = "Not Wierd"

main :: IO ()
main = do
    temp <- getLine
    let n = read temp :: Int
    putStrLn (wierd n)



--getMultipleLines :: Int -> IO [String]
--getMultipleLines n
--    | n <= 0 = return []
--    | otherwise = do          
--        x <- getLine         
--        xs <- getMultipleLines (n-1)    
--        let ret = (x:xs)    
--        return ret          
