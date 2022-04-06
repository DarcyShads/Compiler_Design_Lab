%{
    #include<stdio.h>
    int n=0,t=0,s=0;
%}

%%
"\n" {n++;}
" " {s++;}
"\t" {t++;}
%%

int yywrap(void) {}

int main()
{
    yylex();
    printf("New Line = %d",n);
    printf("Space = %d",s);
    printf("Tab = %d",t);
    return 0;
}