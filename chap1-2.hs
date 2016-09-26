fib n = do
    let fibs = 0 : 1 : [a + b | (a,b) <- zip fibs (tail fibs)]
    let nfibs = take n fibs
    last nfibs
