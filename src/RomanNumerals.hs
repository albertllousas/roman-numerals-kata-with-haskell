module RomanNumerals (intToRoman, romanToInt) where

import qualified Data.List as List
import Data.Maybe (fromMaybe)

mappings :: [(Int, String)]
mappings = [
  (1000, "M"), (900, "CM"), (500, "D"), (400, "CD"), (100, "C"), (90, "XC"),
  (50, "L"), (40, "XL"), (10, "X"), (9, "IX"), (5, "V"), (4, "IV"), (1, "I")
  ]

intToRoman :: Int -> String
intToRoman num = intToRoman' num ""

intToRoman' num acc = findMapping num |> \mapping ->
                   if num == 0
                   then acc
                   else intToRoman' (num - (fst mapping)) (acc ++ snd mapping)

romanToInt :: String -> Int
romanToInt roman = romanToInt' roman 0

romanToInt' [] acc = acc
romanToInt' (x:[]) acc = acc + (findInt [x])
romanToInt' (x:y:xs) acc =
  findMaybeInt [x,y] |> \maybeInt -> case maybeInt of
    Just int -> romanToInt' xs (acc + int)
    Nothing -> findInt [x] |> \int -> romanToInt' (y:xs) (acc + int)

findMaybeInt roman = List.find (\(number, romanNumeral) -> romanNumeral == roman) mappings |> fmap fst

findInt roman = fromMaybe 0 (findMaybeInt roman)

findMapping int = List.head $ List.filter (\(number, _) -> number <= int) mappings

(|>) = flip ($)
