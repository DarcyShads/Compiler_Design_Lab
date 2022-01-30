%{
    #include<stdio.h>
%}

%%
[0-9]+.[0-9]+ {printf("Floating point");}
[0-9]+ {printf("Integer");}
%%

int yywrap(){return 1;}

int main()
{
    yylex();
    return 0;
}