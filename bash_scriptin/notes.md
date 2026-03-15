# Some Things to remember abt Bash:

REPL - Read, Eval, Print, Loop
- Bash terminal and the explorer(for windows) are always in sync.  
(Meaning the underlying file sys they work with is same)

- Paiger:- cmds that pages through the inputs: Eg: less, more  

- Bash is Dynamically typed language (bash variables are untyped) 


## External and shell built-in commands: 
- can be checked using **type** command: `type -a <cmd> or type <cmd>`
- Help=man equivalent in bash. echo is both ext(/bin/echo) and builtin  
- **compgen -b**: lists all the builtin commands 

## Shebang note:
Working: Kernal appends the script to the end of shebang note. Eg: /bin/bash ./script.sh

1. `#!/bin/bash`
> bash is not always located at /bin/bash so use usr/bin/env bash
> may not execute the latest version of bash

2. `#!/usr/bin/env bash` 
> executes the verion of bash in $PATH 

---
## Basic Variables:
- $PATH: the bash shell cheks these path to find the commands.
- $SHELL: what shell is being run
- $HOME: expands the home path.
- $PWD, $USER, $HOSTNAME, $MACHTYPE-machine-type  

To set command into a var use: var=$(..cmd..) or backtick(\`..cmd..\`)[old method]

> to assign/set a variable some value simply use = .Eg: foo='wow   bruh' / echo "$foo"   
> use `unset <var-name>` to dis-assign a variable.  
> double quote " " your expansions to preserve spaces in your variable.


- use local <\var>\ : to make variables local; if not used variables will be global

## Special Variables:

Positional Parameters:
- $0: script name or command used to run it
- $1: reads the first argument given to the program  
`Eg: ./script <arg1>(i.e.$1) <arg2>(i.e.$2)`
- $2: reads the second argument and so on
- "$@": It expands array of all arguments passed, quotes helps to take multi-string values as a single arg
> (i.e."One two" is read as a single arg if quoted else bash takes it as two diff arguments) 
`Eg: instead of "$1" "$2" "$3" ... "$n", use "$@"` 
- $#: number of arguments

---
---
# Bash Scripting:
`bash -n <script-name>` : To check for any syntax errors  
echo $? : prints whether previous ran cmd is successful or no. (0-success)  
read : takes user input, use -p option for prompt  

**Some things**
"": allows variable expansion inside quotes ,'': doesnot allow variable expansion inside quotes  
Boolean: true (0) | false (1)  


## Operators:
Numeric Operators: 		# Use for numeric comparisions
- -lt (less than)
- -le (less than or equal)
- -gt (greater than)
- -ge (greater than or equal)
- -eq (equal) 
- -ne (not equal)
> Donot use the symbolic equivalent, they are used to compare strings only

String Operators: ==,!=,>,<

## Datatypes:
- Normal assignment(var=value): To declare strings or for normal assignment

- declare: Bash builtin func to define var with attributes (int,readonly,array,...)
*Note*: Bash doesnot support floating point arithmetic, we have to use external tools forit

1. `declare -i <var>`: -i Explicitly declares variable as integer.
Properties:
- If Non-numeric value gets assigned then it is considered as 0
- Arithmetic happens automatically
> if declared without -i, or normal assignment then arithmetic should be explicitly done using $((opr))

2. `declare -A array`:

## Comments:
- # : for single line comment
- << 'Comment'	 ....line1 ....line2	Comment : for multi line/block comments.

## Patterns:

```bash
^ - denotes start of the line. Eg: grep "^Bob" - starting with bob
$ - denotes end of the line. Eg: grep "bob$" - ending in bob
```

