module RomanNumerals where

toRoman :: Int -> String
toRoman num = toRoman' num ""

toRoman' :: Int -> String -> String
toRoman' num acc
  | num == 0 = acc
  | num < 4 = toRoman' (num - 1) (acc ++ "I")
  | num == 4 = "IV"
  | num == 5 = "V"
  | otherwise = error "Not implemented"

