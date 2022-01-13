#include <stdio.h>
#include <stdlib.h>
#include <conio.h>
#include <locale.h>

int main()
{
    int Vetor[60];

    Vetor[0]=45; Vetor[1]=37; Vetor[2]=26; Vetor[3]=12; Vetor[4]=11; Vetor[5]=18; Vetor[6]=36; Vetor[7]=48; Vetor[8]=29; Vetor[9]=42; Vetor[10]=90; Vetor[11]=7; Vetor[12]=3; Vetor[13]=57; Vetor[14]=60;
    Vetor[15]=1; Vetor[16]=70; Vetor[17]=85; Vetor[18]=96; Vetor[19]=99; Vetor[20]=75; Vetor[21]=66; Vetor[22]=68; Vetor[23]=2; Vetor[24]=72; Vetor[25]=9; Vetor[26]=40; Vetor[27]=53; Vetor[28]=47; Vetor[29]=91;
    Vetor[30]=95; Vetor[31]=77; Vetor[32]=56; Vetor[33]=22; Vetor[34]=13; Vetor[35]=4; Vetor[36]=88; Vetor[37]=33; Vetor[38]=69; Vetor[39]=52; Vetor[40]=92; Vetor[41]=55; Vetor[42]=23; Vetor[43]=27; Vetor[44]=30;
    Vetor[45]=35; Vetor[46]=76; Vetor[47]=65; Vetor[48]=25; Vetor[49]=6; Vetor[50]=38; Vetor[51]=46; Vetor[52]=15; Vetor[53]=59; Vetor[54]=62; Vetor[55]=80; Vetor[56]=50; Vetor[57]=5; Vetor[58]=44; Vetor[59]=00;
    return Menu(Vetor);

}

int Menu(int Vetor[])
{

    int opcao;
    do{
    printf("\n\t===========MENU==========\n\n");
      printf("\t1 - Listar\n\t2 - Ordenar\n\t3 - Sobre\n\t4 - Sair\n ");
      printf("\t===========================[ ]\b\b");
    scanf("%d",&opcao);

 switch(opcao)
 {
     case 1:
    {
       ListarVetor(Vetor);
       break;
    }
    case  2:
     {
       List_Pos_i(Vetor);
       break;
     }
    case  3:
     {
      Sobre();
      break;
     }
      case 4:
      {

          printf("Pressione qualquer tecla para Sair\n\n ");
          system("pause");
          break;
      }
		default :
            {
                 setlocale(LC_ALL, "Portuguese");
				printf("\n\n\t Opção Inválida!\n\n ");
				system("pause");
				break;
			}
 }
		}while(opcao > 1 || opcao < 4);
}


ListarVetor(int Vet[])
{
    int chave,i,x,j,aux;
    for(i=0;i<60;i++)
    {

        printf("POS[%d]: %d\n ",i,Vet[i]);

    }

    printf("\n\n\tOrdenacao do vetor de 60 possicoes\n ");
    for(i=59;i>=0;i--)
    {
        for(j=1;j<=i;j++)
        {
            if(Vet[j-1]>Vet[j])
            {
                aux = Vet[j];
                Vet[j]=Vet[j-1];
                Vet[j-1]=aux;
            }
        }
    }
    for(i=0;i<60;i++)
    {
        printf("POS[%d]: %d\n",i,Vet[i]);

    }

    printf("\n\n     Pressione para voltar");

     getch();
    return Menu(Vet);
}


int List_Pos_i(int Vet[])
{
    int aux;
    int i,j,x;

  /************************15*************************************/
   setlocale(LC_ALL, "Portuguese");
  printf("\n\n\tOrdenação até a possição do i for 15:\n\n ");
    for(i=15; i >= 0; i--)
    {
        for(j=1;j<=i;j++)
        {
            if(Vet[j-1]>Vet[j])
            {
                aux = Vet[j];
                Vet[j]=Vet[j-1];
                Vet[j-1]=aux;
            }
        }
    }
    for(i=0;i<60;i++)
    {
        printf("POS[%d]: |%d|  ",i,Vet[i]);

    }
/***************************20**********************************/
    printf("\n\n\tOrdenação até a possição do i for 20:\n\n");
    for(i=20; i >= 0;i--)
    {
        for(j=1;j<=i;j++)
        {
            if(Vet[j-1]>Vet[j])
            {
                aux = Vet[j];
                Vet[j]=Vet[j-1];
                Vet[j-1]=aux;
            }
        }
    }
    for(i=0; i<60; i++)
    {
        printf("POS[%d]: |%d|  ",i,Vet[i]);

    }
/***************************25**********************************/
    printf("\n\n\tOrdenaçaõ até a possição do i for 25:\n\n ");
    for(i=25;i>=0;i--)
    {
        for(j=1;j<=i;j++)
        {
            if(Vet[j-1]>Vet[j])
            {
                aux = Vet[j];
                Vet[j]=Vet[j-1];
                Vet[j-1]=aux;
            }
        }
    }
    for(i=0;i<60;i++)
    {
        printf("POS[%d]: |%d|  ",i,Vet[i]);

    }
/**************************30**********************************/
     printf("\n\n\tOrdenação até a possição do i for 30:\n\n ");
    for(i=30;i>=0;i--)
    {
        for(j=1;j<=i;j++)
        {
            if(Vet[j-1]>Vet[j])
            {
                aux = Vet[j];
                Vet[j]=Vet[j-1];
                Vet[j-1]=aux;
            }
        }
    }
    for(i=0;i<60;i++)
    {
        printf("POS[%d]: |%d|  ",i,Vet[i]);

    }

    /**************************35**********************************/
     printf("\n\n\tOrdenação ate a possição do i for 35:\n\n ");
    for(i=35;i>=0;i--)
    {
        for(j=1;j<=i;j++)
        {
            if(Vet[j-1]>Vet[j])
            {
                aux = Vet[j];
                Vet[j]=Vet[j-1];
                Vet[j-1]=aux;
            }
        }
    }
    for(i=0;i<60;i++)
    {
        printf("POS[%d]: |%d|   ",i,Vet[i]);

    }


/*************************40************************************/

      printf("\n\n\tOrdenação até a possição do i for 40:\n\n ");
    for(i=40;i>=0;i--)
    {
        for(j=1;j<=i;j++)
        {
            if(Vet[j-1]>Vet[j])
            {
                aux = Vet[j];
                Vet[j]=Vet[j-1];
                Vet[j-1]=aux;
            }
        }
    }
    for(i=0;i<60;i++)
    {
        printf("POS[%d]: |%d|   ",i,Vet[i]);

    }

/******************************************************************/



    system("pause");
    return Menu(Vet);
}

void Sobre()
{

     setlocale(LC_ALL, "Portuguese");
    printf("\n\t  CIENCIA DA COMPUTAÇÃO \n\t  WENDERSON NOGUEIRA DE LIMA \n\t RA:1299168493 \n");


system("pause");
return main();
}
