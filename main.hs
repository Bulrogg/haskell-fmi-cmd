import System.Environment
import Data.List

-- getArgs :: IO [String]
-- getProgName :: IO String
-- putStrLn :: String -> IO ()
-- mapM :: Monad m => (a -> m b) -> [a] -> m [b]
-- lookup :: Eq a => a -> [(a, b)] -> Maybe b

type Args = [String]
type CommandeName = String 

helloCmd :: Args -> IO ()
helloCmd _ = putStrLn "Hello world"

pingCmd :: Args -> IO ()
pingCmd _ = putStrLn "pong"

helpCmd :: Args -> IO ()
helpCmd _ = do
	putStrLn "Les commandes fmi-cmd :"
	putStrLn "      hello       Affiche \"Hello World\""
	putStrLn "      ping        Affiche \"pong\""
	putStrLn "      help        Affiche l'aide"

dispatch :: [ (CommandeName, Args -> IO ()) ]
dispatch = [ ("hello", helloCmd)
           , ("ping", pingCmd) 
           , ("help", helpCmd) 
           ]

main :: IO ()
main = do
	(cmdName:args) <- getArgs
	let (Just cmd) = lookup cmdName dispatch
	cmd args