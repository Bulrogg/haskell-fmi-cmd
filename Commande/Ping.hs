module Commande.Ping (pingCmd) where

pingCmd :: [String] -> IO ()
pingCmd _ = putStrLn "pong"