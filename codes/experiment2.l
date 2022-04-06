%{
    #include<stdio.h>
%}

%%
^[a-zA-z_][a-zA-Z0-9_]* {printf("valid");};
.* {printf("invalid");}
%%

int yywrap(void) {}

int main()
{
    yylex();
    return 0;
}