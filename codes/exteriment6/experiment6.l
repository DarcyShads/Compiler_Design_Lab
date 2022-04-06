%{
    #include<stdio.h>
    int n=0,t=0,s=0,o=0;
%}

%%
\n {n++;}
[ ] {s++;}
\t {t++;}
. {o++;}
%%

int yywrap(void) {};

int main()
{
    extern FILE *yyin,*yyout;
    yyin=fopen("in.txt","r");
    yyout=fopen("out.txt","w");
    yylex();
    fprintf(yyout,"New Line = %d\n",n);
    fprintf(yyout,"Space = %d\n",s);
    fprintf(yyout,"Tab = %d\n",t);
    fprintf(yyout,"Others = %d\n",o);
    return 0;
}