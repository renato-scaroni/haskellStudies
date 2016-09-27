-- Simple Hello world
sayHello = do 
    putStrLn "Hello, What`s your name?"
    name <- getLine
    putStrLn $ "Hi " ++ name

-- Function Example
doubleMe x = x + x

-- Fibonacci recursive using high functions
fibR 0 = 1
fibR 1 = 1 
fibR n = fibR (n - 1) + fibR (n - 2)

-- Fibonacci recursive using guards
fibG n
    | n == 0 = 1
    | n == 1 = 1
    | n > 1 = fibG (n - 1) + fibG (n - 2)

-- Fibonacci using list comprehension and some list/tupples clever methods
fib n = do
    let fibs = 0 : 1 : [a + b | (a,b) <- zip fibs (tail fibs)]
    let f = take n fibs
    last f

-- Other simple function that calculates the circunference os 
-- circle of raius r
circunference r = 2 * pi * r

-- Other simple guard example
-- body mass index checker
bmiTell bmi
    | bmi <= 18.5 = "You're underweight, eat more!"
    | bmi <= 25.0 = "Looking good!"
    | bmi <= 30.0 = "You're overweight. Let's work out together!"
    | otherwise   = "You're obese blablabla"

-- List comprehension example
-- calculate all rectangle triagles with sides in [1,n]
rightTriangles n = do
    [(a,b,c) | c <- [1..n], a <- [1..c], b <- [1..a], a^2 + b^2 == c^2]