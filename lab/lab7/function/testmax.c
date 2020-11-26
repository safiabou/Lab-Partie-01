#include<stdio.h>
#include <stdlib.h>
#include"max.h"

int main ()
{
	int nbr_value;
	int  max;
	int tab[5]={2,5,7,2,9};

	printf("Nombre d\'elements ? "); 
	scanf ("%d", &nbr_value);

	find_max(tab, nbr_value, &max);
	printf ("Max = %d\n", max);

	return 0;
}
