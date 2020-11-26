#include<stdio.h>
#include <stdlib.h>
#include"min.h"

int main ()
{
	int nbr_value;
	int  min;
	int tab[5]={2,5,7,2,9};

	printf("Nombre d\'elements ? "); 
	scanf ("%d", &nbr_value);

	find_min(tab, nbr_value, &min);
	printf ("Min = %d\n", min);

	return 0;
}
