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
        toRoman number `shouldBe` romanNumeral