module Beer

Interpolation Nat where interpolate = show

bottle : Nat -> String
bottle 0 = "no more bottles of beer"
bottle 1 = "1 bottle of beer"
bottle n = "\{n} bottles of beer"

action : Nat -> String
action 0 = "Go to the store and buy some more"
action _ = "Take one down and pass it around"

beers : (begin : Nat) -> List String
beers begin = map beer [begin..0] where
    next : Nat -> Nat
    next Z = begin
    next (S n) = n

    beer : Nat -> String
    beer n = """
        \{bottle n} on the wall, \{bottle n}.
        \{action n}, \{bottle (next n)} on the wall.
        """

main : IO ()
main = traverse_ putStrLn (beers 99)
