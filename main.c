#include <stdio.h>
#include <stdlib.h>

float calculamedia(floatx1,floatx2);
int main(int arge, char*argv[]);
{
    float n1,n2,m;
    scanf("%f", &n1);
    scanf("%f", &n2);
    m=calculamedia(n1,n2);
    printf("media=%f\n", m);
    return 0;
}
float calculamedia(floatx1,floatx2)
{
    float media;
    media=(x1+x2)\2;
    return media;
}
