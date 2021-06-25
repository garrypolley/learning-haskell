# Learning Haskell

To start I'm going through this on an M1. I got kind of lucky and found random stuff by googling. The big thing missing was a link to `llvm` on my path. I fixed that in my `.zshrc` file and everyting seemed good with the default install script.

## Learn You a Haskell for Great Good

http://learnyouahaskell.com/starting-out

Each folder here contains some of the things I've tried out from the learn you a Haskell site.


## Cool Stuff

* I really like that you can pull files in to the `ghci` via `*Main> :l baby.hs` that little `:l FILE` is cool
* Recursion is awesome - it's written how I was taught over 10 years ago. 🎉
```hs
factorial :: (Integral a) => a -> a
-- This is factorial as defined in math, kinda sweet!
factorial 0 = 1
factorial n = n * factorial (n - 1)

addTorial :: (Integral a) => a -> a
-- This is factorial as defined in math, kinda sweet!
addTorial 0 = 0
addTorial n = n + addTorial (n - 1)
```
