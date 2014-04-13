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
