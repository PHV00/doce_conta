//Construa um algoritmo que converta metros para centímetros 
#include <stdio.h>

int main(void)
{
	float metros, conv;
	printf("Metros: ");
	scanf("%f", &metros);
	
	conv = metros * 100;
	
	printf("%.2f metros é igual à %.2f cm", metros, conv);
}
