%{
    #include<stdio.h>
    int count=0;
%}

%%
ab.*ba {
			printf("valid");
			count++;
			}
.* {printf("invalid");}
%%

int yywrap(void) {}

int main()
{
    yylex();
	 printf("No. of such strings = %d\n",count);
    return 0;
}