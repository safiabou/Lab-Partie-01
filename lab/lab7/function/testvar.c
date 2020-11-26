#include<stdio.h>
#include <stdlib.h>
#include"var.h"


int main ()
{
	int nbr_value;
	float  var;
	int tab[5]={2,5,7,2,9};

	printf("Nombre d\'elements ? "); 
	scanf ("%d", &nbr_value);

	variance(tab, nbr_value, &var);
	printf ("Var = %f\n", var);

	return 0;
}
