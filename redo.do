env
redo-ifchange redo.hs
ghc -XStandaloneDeriving -v0 -o $3 redo.hs
