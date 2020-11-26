#include<stdio.h>
#include <stdlib.h>
#include"var.h"
#include <math.h>


void variance (int t[], int n, float *var)
{

	int sum, Avr;
	float va;
	int i,j;
	int somme=0;
	sum = 0;
	for (j=0; j<n; j++)
	{
		sum = sum + t[j];

	}
	Avr= sum / n;

	for(i=1; i<(n+1);i++)
	{

        printf("%d\n",(t[i]-Avr)*(t[i]-Avr));
		somme= somme + (t[i]-Avr)*(t[i]-Avr);
	}

	va=somme/n;
	*var= va;
}


