# Easier Code Copy
### Basic Lex Code
```
/*Declaration Section*/
%{
    #include<stdio.h>
%}

/*Rules Section*/
%%
() {}
%%

/*User SubRoutines*/
int yywrap(void) {}

int main()
{
    yylex();
    return 0;
}
```
<br>

### To get all the files created in **Compilation Process**
```
gcc --save-temps <filename>.c
```
<br>

### To view all the header files included in object file
```
objdump -h <filename>.o
```
<br>

### Print snippet
```
printf("");
```
<br>

###