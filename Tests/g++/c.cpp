#include<cstdio>


int main()
{
	int a[10];
	double *b=(double*)a;
	for(int i=0;i<10/i;i++)
		b-=12345;
	int c=*b;
	printf("%d\n",c);
	return 0;
}
