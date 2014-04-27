# Intructions

```
-- Apply redo.do recompiling the program 
./redo redo
-- Apply default.txt.do moving TEST.markdown to plain text file
./redo TEST.txt
```

# Debugging

Only it's possible debugging on intrepreted mode, non in compiled mode

```
ghci redo
:load *main
:step
:force _result
:break 5
:continue
```

# Notes

`var <-` always create a new variable, so it doesn't update the value of
previous variable declaration.

# Installing Hoogle

Run: `brew install apple-gcc42`

Fix gcc compiler version to standard version. Edit file:

```
/Library/Frameworks/GHC.framework/Versions/Current/usr/lib/ghc/7.6.3/settings
```

And update the path

```
 ("C compiler command", "/usr/local/Cellar/apple-gcc42/4.2.1-5666.3/bin/gcc-4.2"),
```

Install packages

```
cabal install happy
cabal install hoogle
```

Optionally you can install with `--global` to install pacakges in:

`/Library/Haskell/...`

Default installation is local:

`/Users/dst/Library/Haskell/..`

Add config to `~/.bash_profile`:

```
export HASKELL_PATH=~/Library/Haskell
export PATH=$HASKELL_PATH/bin:$PATH
```

Add config to `~/.ghci`

```
let ghciEscapeShellArg arg = "'" ++ concatMap (\c -> if c == '\'' then "'\"'\"'" else [c]) arg ++ "'"
:def! search return . (":! hoogle --color " ++) . ghciEscapeShellArg
:def! doc return . (":! hoogle --info --color " ++) . ghciEscapeShellArg
```

