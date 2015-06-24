module Commande.Croix (croixCmd) where

cellule :: Int -> Int -> Int -> Char
cellule cote i j = 
	case (i==j, cote-i+1==j) of
		(True, True) -> 'X'
		(True, False) -> '\\'
		(False, True) -> '/'
		_ -> ' '

croix :: Int -> String
croix cote = unlines $ map (\j -> map (\i -> cellule cote i j) [1..cote]) [1..cote]


-- TODO prendre en compte la commande pour la taille de la croix
croixCmd :: [String] -> IO ()
croixCmd _ = putStrLn $ croix 9 