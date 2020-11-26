#include<stdio.h>
#include <stdlib.h>
#include"var.h"
#include"max.h"
#include"min.h"


int main ()
{
	int nbr_value;
	float  var;
	int max;
	int min;

	int tab[10]={4,9,10,11,12,15,12,9,0,30};

	printf("Nombre d\'elements ? "); 
	scanf ("%d", &nbr_value);

		
	find_max(tab,nbr_value, &max); 
	printf ("Max = %d\n", max);

	find_min(tab,nbr_value, &min); 
	printf ("Min = %d\n", min);

	variance(tab,nbr_value, &var); 
	printf ("Var = %f\n", var);
	
	return 0;
}
