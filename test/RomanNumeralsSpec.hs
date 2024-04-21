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
            (3, "III"),
            (4, "IV"),
            (5,"V"),
            (6,"VI")
          ] $ \(number, romanNumeral) ->
      it ("should convert " ++ (show number) ++ " to "++ (show romanNumeral)) $ do
        toRoman number `shouldBe` romanNumeral
