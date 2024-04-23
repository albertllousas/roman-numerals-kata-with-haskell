module RomanNumerals where

import qualified Data.List as List
import Debug.Trace

toRoman :: Int -> String
toRoman num = toRoman' num ""

mappings :: [(Int, String)]
mappings = [(50, "L"), (40, "XL"), (10, "X"), (9, "IX"), (5, "V"), (4, "IV"), (1, "I")]

toRoman' :: Int -> String -> String
toRoman' num acc = if num == 0
                   then acc
                   else toRoman' (num - value) (acc ++ roman)
                 where mapping = findMappingFor num
                       value = fst mapping
                       roman = snd mapping

findMappingFor :: Int -> (Int, String)
findMappingFor num = List.head $ List.filter (\(n, _) -> n <= num) mappings
