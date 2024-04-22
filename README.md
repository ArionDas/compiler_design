# __Compiler_Design__
## Overview
This repository contains the source code of the programs done in our lab using Lex and Yacc. <br> Lexical analysers (.l) files are used to recognise the tokens encountered in a program. <br> Yacc (.y) files are used to design custom grammars for one's own compiler.

## Features
Lexical analysis using Lex <br>
Syntactic analysis and parsing using Yacc <br>
c files & txt files for code input <br>
There are a lot of garbage files which are a result of .y & .l file evaluation

## Usage
It's better to work on a UNIX based OS (Ubuntu / Redhat / CentOS) <br>
Make sure you have Flex (Lex) & Bison (YACC) installed on your system <br>

## How to run lex files (.l files)
#### Run the following commands in order
>>> lex <file_name.l> <br>
>>> gcc lex.yy.c -ll -o <custom_file_name> <br>
>>> ./<custom_file_name> < input_file > output_file <br>

## How to run yacc files (.y files)
#### Run the following commands in order
>>> yacc -dv <file_name.y> <br>
>>> gcc y.tab.c -ll -o <custom_file_name> <br>
>>> ./<custom_file_name> < input_file > output_file <br>
