import System.Environment
import Data.List

-- getArgs :: IO [String]
-- getProgName :: IO String
-- putStrLn :: String -> IO ()
-- mapM :: Monad m => (a -> m b) -> [a] -> m [b]

main :: IO ()
main = do
	args <- getArgs
	progName <- getProgName
	putStrLn "Les arguments sont "
	mapM putStrLn args
	putStrLn "Le nom du programme est "
	putStrLn progName