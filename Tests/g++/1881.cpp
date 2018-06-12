#include<cstdio>
#define MAXN 210000

int ans[MAXN*4],Left[MAXN*4][3],Right[MAXN*4][3];

int MAX(int a,int b){return a>b?a:b;}

void Swap(int&a,int&b){int c(a);a=b;b=c;}

void Build(int x,int l,int r)
{
	if(l==r)
	{
		ans[x]=1;
		Left[x][l&1]=1;
		Left[x][~l&1]=0;
		Right[x][l&1]=1;
		Right[x][~l&1]=0;
		return;
	}
	int m((l+r)/2);
	Build(2*x,l,m);
	Build(2*x+1,m+1,r);
	ans[x]=MAX(MAX(ans[2*x],ans[2*x+1]),MAX(Right[2*x][1]+Left[2*x+1][1],Right[2*x][0]+Left[2*x+1][0]));
	for(int k=0;k<2;k++)
{
	if(Left[2*x][k]==(m-l+1))
		Left[x][k]=Left[2*x+1][k]+m-l+1;
	else
		Left[x][k]=Left[2*x][k];
	if(Right[2*x+1][k]==(r-m))
		Right[x][k]=Right[2*x][k]+r-m;
	else
		Right[x][k]=Right[2*x+1][k];
}
}

void Change(int x,int l,int r,int y)
{
	if(l==r)
	{
		ans[x]=1;
		Swap(Left[x][0],Left[x][1]);
		Swap(Right[x][0],Right[x][1]);
		return;
	}
	int m((l+r)/2);
	if(y<=m)Change(2*x,l,m,y);
		else Change(2*x+1,m+1,r,y);
	ans[x]=MAX(MAX(ans[2*x],ans[2*x+1]),MAX(Right[2*x][1]+Left[2*x+1][1],Right[2*x][0]+Left[2*x+1][0]));
	for(int k=0;k<2;k++)
{
	if(Left[2*x][k]==(m-l+1))
		Left[x][k]=Left[2*x+1][k]+m-l+1;
	else
		Left[x][k]=Left[2*x][k];
	if(Right[2*x+1][k]==(r-m))
		Right[x][k]=Right[2*x][k]+r-m;
	else
		Right[x][k]=Right[2*x+1][k];
}
}

int main()
{
	int n,i,Q;
	freopen("1881.in","rb",stdin);
	freopen("1881.out","wb",stdout);
	scanf("%d",&n);
	Build(1,1,n);
	for(scanf("%d",&Q);Q--;)
	{
		scanf("%d",&i);
		Change(1,1,n,i);
		printf("%d\n",ans[1]);
	}
	return 0;
}
