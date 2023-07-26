module Beer

Interpolation Int where interpolate = show

bottle : Int -> String
bottle 0 = "no more bottles of beer"
bottle 1 = "1 bottle of beer"
bottle n = "\{n} bottles of beer"

take : Int -> String
take 0 = "Go to the store and buy some more"
take _ = "Take one down and pass it around"

beer : Int -> String
beer n = """
    \{bottle n} on the wall, \{bottle n}.
    \{take n}, \{bottle (n - 1)} on the wall.
    """

main : IO ()
main = traverse_ (putStrLn . beer) [99..1]
