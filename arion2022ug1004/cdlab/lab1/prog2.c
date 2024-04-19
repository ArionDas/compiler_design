#include<stdio.h>

int add(int a, int b) {
	return (a+b);
}

int subtract(int a, int b) {
	return (a-b);
}

int factorial(int num) {
	if(num<=1)
		return 1;
	return num*factorial(num-1);
}

int main() {
	int a,b;

	scanf("%d %d",&a,&b);
	printf("Addition: %d\n",add(a,b));
	printf("Subtraction: %d\n", subtract(a,b));
	printf("Factorial of %d: %d\n",a,factorial(a));
}
