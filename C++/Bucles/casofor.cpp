#include<stdio.h>
int suma;
int cont;

int main(){
	for(cont=1;cont<=100;cont++){
		suma+=cont;
		printf("El valor por cada bucle de for es :%i\n",suma);
	}
	printf("El valor total del for es :%i",suma);	
	return 0;
}
