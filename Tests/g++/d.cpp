#include<cstdio>


int gcd(int a,int b)
{
	for(;b;)
	{
		int c=a;
		a=b;
		b=c%a;
	}
	return a;
}

int main()
{
	int a=1231;
	int b=3453;
	printf("%d\n",gcd(a,b));
	return 0;
}
