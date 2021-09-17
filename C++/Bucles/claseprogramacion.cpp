#include<stdio.h>

int contador;//le indico valor 0
int sum;


int main(){

	contador=0;
		
	while (contador<100){
	
	 	
		contador++;
		sum=sum+contador;
		printf("El valor por cada bucl de while es:%i\n",sum);
		}
	printf("El valor total del while es :%i",sum);	
		
		
	return 0;
}

