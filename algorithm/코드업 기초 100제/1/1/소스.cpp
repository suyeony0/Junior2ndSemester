#include<string>
#include<iostream>
using namespace std;

int main() {
	long long int a,b;
	scanf_s("%d %d", &a, &b);
	printf("%d\n", a + b);
	printf("%d\n", a - b);
	printf("%d\n", a * b);
	printf("%d\n", a / b);
	printf("%d\n", a % b);
	printf("%.2f", float(a) / float(b));
}