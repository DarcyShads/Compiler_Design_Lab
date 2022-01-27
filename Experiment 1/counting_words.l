/*Declaration Section*/
%{
    #include<stdio.h>
    #include<string.h>
    int words=0;
%}

/*Rules Section*/
%%
([a-zA-Z0-9]*) {words++;}
"\n" {printf("%d\n",words);}
%%

/*User SubRoutines*/
int yywrap(void) {} //wrapping the regular expressions

int main()
{
    yylex();  //generate the C code
    return 0;
}