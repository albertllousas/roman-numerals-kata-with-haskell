module RomanNumerals where

toRoman :: Int -> String
toRoman num = toRoman' num ""

toRoman' :: Int -> String -> String
toRoman' num acc
  | num == 0 = acc
  | num < 4 = toRoman' (num - 1) (acc ++ "I")
  | num == 4 = toRoman' (num - 4) (acc ++ "IV")
  | num < 9 = toRoman' (num - 5) (acc ++ "V")
  | num == 9 = toRoman' (num - 9) (acc ++ "IX")
  | num < 40 = toRoman' (num - 10) (acc ++ "X")
  | num < 50 && num >= 40 = toRoman' (num - 40) (acc ++ "XL")
  | num == 50 = toRoman' (num - 50) (acc ++ "L")
  | otherwise = error "Not implemented"

