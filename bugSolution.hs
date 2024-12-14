The correct way to handle `Maybe` values is to use pattern matching to check if the value is `Just` or `Nothing`.  Alternatively, functions like `fromMaybe` can provide a default value if the `Maybe` is `Nothing`.

```haskell
myFunction :: Int -> Int
myFunction x = x * 2

main :: IO ()
main = do
  let maybeValue = Just 5
  case maybeValue of
    Just x -> let result = myFunction x in print result
    Nothing -> print "Value is Nothing"

-- Or using fromMaybe
import Data.Maybe (fromMaybe)

main2 :: IO ()
main2 = do
  let maybeValue = Just 5
  let defaultValue = 0
  let result = myFunction $ fromMaybe defaultValue maybeValue
  print result

main3 :: IO ()
main3 = do
  let maybeValue = Nothing
  let defaultValue = 0
  let result = myFunction $ fromMaybe defaultValue maybeValue
  print result
```
This corrected code handles both `Just` and `Nothing` cases, preventing runtime errors.