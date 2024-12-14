# Haskell Maybe Type Error

This repository demonstrates a common error in Haskell when dealing with the `Maybe` type.  The code attempts to pass a `Maybe` value to a function expecting an `Int`, which results in a runtime error if the `Maybe` value is `Nothing`.

The `bug.hs` file contains the erroneous code.  The `bugSolution.hs` file demonstrates the correct way to handle `Maybe` values using pattern matching or functions like `fromMaybe`.