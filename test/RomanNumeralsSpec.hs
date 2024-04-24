module RomanNumeralsSpec where

import RomanNumerals
import Test.Hspec
import Control.Monad (forM_)

spec :: Spec
spec = do

  describe "Number to Roman Numeral" $ do

    forM_ [ (1,"I"), (2, "II"), (3, "III"), (4, "IV"), (5, "V"), (6, "VI"), (7, "VII"),
            (8, "VIII"), (9, "IX"), (10, "X"), (15, "XV"), (27, "XXVII"), (40, "XL"),
            (46, "XLVI"), (50, "L"), (59, "LIX"), (93, "XCIII"), (100, "C"), (478, "CDLXXVIII"),
            (666, "DCLXVI"), (500, "D"), (999, "CMXCIX"), (1000, "M"), (3888, "MMMDCCCLXXXVIII")
          ] $ \(number, romanNumeral) ->
      it ("should convert " ++ (show number) ++ " to "++ (show romanNumeral)) $ do
        intToRoman number `shouldBe` romanNumeral

  describe "Roman Numeral to Number" $ do

    forM_ [
            ("I", 1), ("II", 2), ("III", 3), ("IV", 4), ("V", 5), ("VI", 6), ("VII", 7),
            ("VIII", 8), ("IX", 9), ("X", 10), ("XV", 15), ("XXVII", 27), ("XL", 40),
            ("XLVI", 46), ("L", 50), ("LIX", 59), ("XCIII", 93), ("C", 100), ("CDLXXVIII", 478),
            ("DCLXVI", 666), ("D", 500), ("CMXCIX", 999), ("M", 1000), ("MMMDCCCLXXXVIII", 3888)
          ] $ \(romanNumeral, number) ->
      it ("should convert " ++ (show romanNumeral) ++ " to "++ (show number)) $ do
        romanToInt romanNumeral `shouldBe` number