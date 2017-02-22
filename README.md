# What is this

This is a demo demonstrating that in a subprocess started by a swift program, input from keyboard cannot be captured.

# How to reproduce the problem

```
$ git clone git@github.com:axl411/swift-get-input-problem.git
$ cd swift-get-input-problem
$ ./main.swift
```

`main.swift` is a runnable script written in Swift that will start a subprocess, which is another script `b.swift`. 

I can see the prompt "input something" generated from `b.swift`, then I input some words and press `⏎`, the expected result is another line of output showing my input and then program ends normally. However, the input isn't accepted after pressing `⏎`, so the subprocess keeps waiting.
