# Learning Haskell

To start I'm going through this on an M1. I got kind of lucky and found random stuff by googling. The big thing missing was a link to `llvm` on my path. I fixed that in my `.zshrc` file and everyting seemed good with the default install script.

## Learn You a Haskell for Great Good

http://learnyouahaskell.com/starting-out

Each folder here contains some of the things I've tried out from the learn you a Haskell site.

## My Log

Below is me journalling what I've looked at and seen.

### `2021-06-18`

I spent some time looking at the initial `baby.hs` and getting Haskell working on the M1. Did not actually save to git yet.

Did spend a bit more time than desired on figuring out that the `llvm` compiler was the real issue on why I couldn't get files compiling.

### `2021-06-21`

Played with a little bit of the `baby.hs` stuff and saw the first part of the `ghci` and learned about the neat `:l FILE` thing.

### `2021-06-24`

I've gotten a bit further through the tutorial/book online. I've stopped at http://learnyouahaskell.com/recursion and need to pick back up here. Cool part I've learned today is that you can combine pattern matching and function definitions in a very powerful way. The neatest part is seeing how it looks like the mathematical definition.

```hs
factorial :: (Integral a) => a -> a
-- This is factorial as defined in math, kinda sweet!
factorial 0 = 1
factorial n = n * factorial (n - 1)
```


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
* `where` clause seems neat. I'm not sure how I'd feel about pattern matching in it rather than assignment.
```hs
bmiTell :: (RealFloat a) => a -> a -> String
bmiTell weight height
    | bmi <= skinny = "You're underweight, you emo, you!"
    | bmi <= normal = "You're supposedly normal. Pffft, I bet you're ugly!"
    | bmi <= fat    = "You're fat! Lose some weight, fatty!"
    | otherwise     = "You're a whale, congratulations!"
    where bmi = weight / height ^ 2
          skinny = 18.5
          normal = 25.0
          fat = 30.0


-- Versus

bmiTell :: (RealFloat a) => a -> a -> String
bmiTell weight height
    | bmi <= skinny = "You're underweight, you emo, you!"
    | bmi <= normal = "You're supposedly normal. Pffft, I bet you're ugly!"
    | bmi <= fat    = "You're fat! Lose some weight, fatty!"
    | otherwise     = "You're a whale, congratulations!"
    where bmi = weight / height ^ 2
          (skinny, normal, fat) = (18.5, 25.0, 30.0)
```
