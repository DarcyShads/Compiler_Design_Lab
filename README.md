# Installation Steps
### For Installing GCC
```
sudo apt-get install gcc
```
### To check GCC installation
```
gcc --version
```
### For Installing LEX
```
sudo apt-get install bison flex
```
### To check LEX installation
```
lex --version
```
<br>
<br>

# Compilation Steps
### To Compile LEX (.l) files
```
lex <filename>.l
```
### To Compile C file generated
```
gcc lex.yy.c -o <filename>
```
### To Execute the file
```
./<filename>
```
