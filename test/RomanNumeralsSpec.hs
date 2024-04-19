module RomanNumeralsSpec where

import Test.Hspec

spec :: Spec
spec = do

  describe "Number to Roman Numeral" $ do

    it "should work" $ do
      1 `shouldBe` 1
