import System.Environment
import Data.List
import Commande.Ping
import Commande.Hello
import Commande.Croix


-- getArgs :: IO [String]
-- getProgName :: IO String
-- putStrLn :: String -> IO ()
-- mapM :: Monad m => (a -> m b) -> [a] -> m [b]
-- lookup :: Eq a => a -> [(a, b)] -> Maybe b

helpCmd :: [String] -> IO ()
helpCmd _ = do
	putStrLn "Les commandes fmi-cmd :"
	putStrLn "      hello       Affiche \"Hello World\""
	putStrLn "      ping        Affiche \"pong\""
	putStrLn "      croix       Affiche une croix de la taille voulu"
	putStrLn "      help        Affiche l'aide"

dispatch :: [ (String, [String] -> IO ()) ]
dispatch = [ ("hello", helloCmd)
           , ("ping",  pingCmd) 
           , ("croix", croixCmd) 
           , ("help",  helpCmd) 
           ]

main :: IO ()
main = do
	(cmdName:args) <- getArgs
	let (Just cmd) = lookup cmdName dispatch
	cmd args