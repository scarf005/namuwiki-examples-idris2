module Times

Interpolation Int where interpolate = show

times : Int -> Int -> String
times x y = "\{x} * \{y} = \{x * y}"

main : IO ()
main = traverse_ putStrLn [times x y | x <- [2..9], y <- [1..9]]
