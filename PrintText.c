#include<stdio.h>
int main()
{
    int i ;
    char info[100] ;
    FILE *fp ;
    fp = fopen("file", "r") ;

    for (i = 0 ; i<=200000; i ++)
    {
        fscanf(fp, "%s", info);
        printf("%s ", info);
    }
}
