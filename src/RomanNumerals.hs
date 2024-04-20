module RomanNumerals where

toRoman :: Int -> String
toRoman 1 = "I"
toRoman 2 = "II"
toRoman 3 = "III"
toRoman 4 = "IV"
toRoman _ = error "Not implemented"

