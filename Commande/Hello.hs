module Commande.Hello (helloCmd) where

helloCmd :: [String] -> IO ()
helloCmd _ = putStrLn "Hello world"