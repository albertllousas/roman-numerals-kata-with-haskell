module RomanNumeralsSpec where

import RomanNumerals
import Test.Hspec
import Control.Monad (forM_)

spec :: Spec
spec = do

  describe "Number to Roman Numeral" $ do

    forM_ [
            (1,"I"),
            (2, "II"),
            (3, "III")
          ] $ \(number, romanNumeral) ->
      it ("should convert " ++ (show number) ++ " to "++ (show romanNumeral)) $ do
        convertToRomanNumeral number `shouldBe` romanNumeral
