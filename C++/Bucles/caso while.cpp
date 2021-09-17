#include<stdio.h>

int contador;//le indico valor 0
int sum;


int main(){

	contador=0;
	sum=0;
		
	while (contador<20){
	
	 	
		contador++;
		sum=sum+contador;
		printf("El valor por cada bucle de while es:%i\n",sum);
		}
		
		
	return 0;
}

