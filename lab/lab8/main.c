#include<stdio.h>
#include <stdlib.h>
#include <math.h>
#include"max.h"
#include"min.h"
#include"var.h"


int main ()
{
	int nbr_value;
	int max;
	int min;
	float  var;
	int tab[7]={13,12,5,1,19,13,17};

	printf("Nombre d\'elements ? "); 
	scanf ("%d", &nbr_value);

		
	find_max(tab,nbr_value, &max); 
	printf ("Max = %d\n", max);

	find_min(tab,nbr_value, &min); 
	printf ("Min = %d\n", min);
	
	variance(tab,nbr_value, &var); 
	printf( "L'arrondi sup: %g\n", ceilf ( var) );
	printf( "L'arrondi inf: %g\n", floorf (var) );
	printf ("Var = %f\n", var);
	
	
	return 0;
}


