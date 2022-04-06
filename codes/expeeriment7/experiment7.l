%{
    #include<stdio.h>
    int vi=0,ii=0;
%}

%%
\n {}
[a-zA-z_][a-zA-Z0-9_]* {++vi;}
.* {ii++;}
%%

int yywrap(void) {}

int main()
{
    extern FILE *yyin,*yyout;
    yyin = fopen("in.txt","r");
    yyout = fopen("out.txt","w");
    yylex();
    fprintf(yyout,"Valid Identifiers: %d\n",vi);
    fprintf(yyout,"invalid Identifiers: %d",ii);
    return 0;
}