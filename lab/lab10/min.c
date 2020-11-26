#include<stdio.h>
#include <stdlib.h>
#include"min.h"


void find_min (int t[], int n, int *min)
{
	int min_value;
	int i;
	min_value = t[0];
	for (i=0; i<n; i++)
	{
		if (t[i] < min_value)
		{
			min_value = t[i];
		}
	}
	
	*min = min_value;
}
