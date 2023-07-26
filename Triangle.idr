module Triangle

import Data.String

main : IO ()
main = traverse_ (putStrLn . flip replicate '*') [1..20]
