//Construa um algoritmo que converta metros para cent�metros 
#include <stdio.h>

int main(void)
{
	float metros, conv;
	printf("Metros: ");
	scanf("%f", &metros);
	
	conv = metros * 100;
	
	printf("%.2f metros � igual � %.2f cm", metros, conv);
}
