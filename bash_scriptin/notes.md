# Some Things to remember abt Bash:

REPL - Read, Eval, Print, Loop
- Bash terminal and the explorer(for windows) are always in sync.  
(Meaning the underlying file sys they work with is same)

- Paiger:- cmds that pages through the inputs: Eg: less, more  

## External and shell built-in commands: 
- can be checked using **type** command: `type -a <cmd> or type <cmd>`
- Help=man equivalent in bash. echo is both ext(/bin/echo) and builtin  
- **compgen -b**: lists all the builtin commands 

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

## Special Variables:

Positional Parameters:
- $1: reads the first argument given to the program  
`./script <arg1>(i.e.$1) <arg2>(i.e.$2)`
- 

---
## Scripting:
`bash -n <script-name>` : To check for any syntax errors  
echo $? : prints whether previous ran cmd is successful or no. (0-success)  
read : takes user input, use -p option for prompt

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

## Comments:
- # : for single line comment
- << 'Comment'	 ....line1 ....line2	Comment : for multi line/block comments.

---
## Patterns:

```bash
^ - denotes start of the line. Eg: grep "^Bob" - starting with bob
$ - denotes end of the line. Eg: grep "bob$" - ending in bob
```

