module N

import Data.String

main : IO ()
main = do
    n <- cast <$> getLine
    putStrLn . joinBy " " . map show $ [1..n]
