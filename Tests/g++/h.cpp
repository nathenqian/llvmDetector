class TypeA
{
	public:
	int* A1;
	int* A2;
};

class TypeB
{
	public:
	TypeA* B1;
	TypeA* B2[10];
};

class TypeC: public TypeA
{
	public:
	int C1;
};

class TypeD
{
	TypeB x;
} fff;


TypeA* y;

y->fff.1


int main()
{
	TypeA x;
	TypeC y;
	TypeB z;
	int i;
//	int S1=0;
//	int S2=0;
//	*(x.A1)=S1;
//	*(y.A1)=S2;
	z.B1=(TypeA*)(&y);
	z.B2[0]=&x;
	TypeA* c;
	c=z.B1;
	c=z.B2[i];
	c=B->f(a,b);
	return 0;
}

int f(int &a,int &b)
