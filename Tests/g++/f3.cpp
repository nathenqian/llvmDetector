#include<cstdio>
#include<cstdlib>



class A
{
	public:
	virtual int f(int x,A*y)
	{
		return x+1;
	}
} iA;

class B : public A
{
	public:
	double y;
	virtual int f(int x,A* y2)
	{
		return x+y;
	}

	int g(int a,int b)
	{
		return a-b;
	}
} iB;


int main()
{
	B iB;
	iB.g(1,2);
	return 0;
}

