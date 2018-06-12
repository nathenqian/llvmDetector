#include<cstdio>
#include<cstdlib>



class A
{
	public:
	int c;
	virtual int f(A*x,A*y)
	{
		return x->c;
	}
};

class B : public A
{
	virtual int f(A*x,A*y)
	{
		return y->c;
	}
};


int main()
{
	A i1,i2,iA;
	B iB;
	A* iC=&iB;
	printf("%d",iC->f(&i1,&i2));
	return 0;
}

