%{
    #include<stdio.h>
    int c=0;
%}

%%
[0-9].*[a-zA-Z] {printf("valid");++c;}
.* printf("invalid");
%%

int yywrap(void) {}

int main()
{
    yylex();
    printf("no. of such strings = %d\n",c);
    return 0;
}