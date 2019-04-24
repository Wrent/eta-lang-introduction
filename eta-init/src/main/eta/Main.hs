import Primes

import Java

data Counter = Counter @dk.cngroup.Counter
  deriving Class

foreign import java unsafe "@static dk.cngroup.Utils.createFile"
  createFile :: String -> IO ()

foreign import java unsafe "@new" newCounter :: Java a Counter
foreign import java unsafe increment :: Java Counter ()
foreign import java unsafe getCnt :: Java Counter Int
foreign import java unsafe getTwiceTheResult :: Java Counter Int

main :: IO ()
main = do
  createFile "hello.txt"
  java $ do
     counter <- newCounter
     counter <.> increment
     counter <.> increment
     result <- counter <.> getCnt
     io $ putStrLn "Counter result is:"
     io $ putStrLn $ show result

sumNumbers :: Int -> Int -> Int
sumNumbers x y = x + y

foreign export java "@static dk.cngroup.Utils.sumNumbers" sumNumbers :: Int -> Int -> Int


--main =
-- do
--  putStrLn $ "The 101st prime is " ++ show (primes !! 100)
