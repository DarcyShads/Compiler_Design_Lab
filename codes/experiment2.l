%{
    #include<stdio.h>
    int i=0,d=0;

%%
[0-9]+.[0-9]+ {printf("Floating point");++d}
[0-9]+ {printf("Integer");i++;}
.* {printf("Invalid Number");}
%%

int yywrap(){return 1;}

int main()
{
    yylex();
    printf("No. of integers = %d",i);
    printf("No. of floating point integers = %d\n",d);
    return 0;
}
