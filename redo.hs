import System.Environment
import System.Process

main :: IO ()
main = do
  args <- getArgs
  mapM_ redo args

redo :: String -> IO ()
redo target = do
  (_, _, _, ph) <- createProcess $ shell $ "sh " ++ target ++ ".do"
  _ <- waitForProcess ph
  return ()

