#include<stdio.h>
#include <stdlib.h>
#include"max.h"


void find_max (int t[], int n, int *max)
{
	int max_value;
	int i;
	max_value = t[0];
	for (i=0; i<n; i++)
	{
		if (t[i] > max_value)
		{
			max_value = t[i];
		}
	}
	
	*max = max_value;
}

