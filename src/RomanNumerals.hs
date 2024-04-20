module RomanNumerals where



convertToRomanNumeral :: Int -> String
convertToRomanNumeral 1 = "I"
convertToRomanNumeral 2 = "II"
convertToRomanNumeral 3 = "III"
convertToRomanNumeral _ = error "Not implemented"
