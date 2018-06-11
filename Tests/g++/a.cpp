#include <cstdio>
#include <vector>

using namespace std;
class VVV {
public:
    virtual void xx() = 0;
};

class A : VVV {
    int i;
public:
    void xx() {printf("gaisini");}
};

class B {
    int j;
};

class C {
    int k;
};

class ChildA : public A {};
class ChildB : public B {};
class ChildC : public C {};
class ChildAB : public A,B {};
class ChildAC : public A,C {};
class ChildBC : public B,C {};
class ChildABC1 : public A,B,C {};
class ChildABC2 : public ChildAB,ChildAC {};
class ChildAA : public ChildA {};
class FakeChildA {public: A a;};
namespace caonima {
class A {
    int i;
};

class B {
    int j;
};

class C {
    int k;
};
class ChildA : public A {};
class ChildB : public B {};
class ChildC : public C {};
class ChildAB : public A,B {};
class ChildAC : public A,C {};
class ChildBC : public B,C {};
class ChildABC1 : public A,B,C {};
class ChildABC2 : public ChildAB,ChildAC {};
class ChildAA : public ChildA {};
class FakeChildA {public: A a;};

}
int main() {
    ChildAB i0;
    A *j0 = (A*) &i0;

    ChildAB i1;
    C *j1 = (C*) &i1;

    ChildABC1 i2;
    A *j2 = (A*) &i2;

    ChildAA i3;
    A *j3 = (A*) &i3;
    FakeChildA xx;
}
