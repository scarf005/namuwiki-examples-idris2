module TimesRow

import Data.String

Interpolation Int where interpolate = show

pad2 : (Show a) => a -> String
pad2 x = padLeft 2 ' ' (show x)

times : Int -> Int -> String
times x y = "\{x} * \{y} = \{pad2 (x * y)}"

timesRow : Int -> String
timesRow y = joinBy " | " [times x y | x <- [2..9]]

main : IO ()
main = traverse_ putStrLn [timesRow y | y <- [1..9]]
