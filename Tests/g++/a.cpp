#include <cstdio>
#include <vector>

using namespace std;
class STDClass {
    int x;
};
namespace mspace{
    class ZX {
    public:
        int xfd;
        void test() {printf("1");}
    };
    class A {
    public:
        int N;
        int C;
        vector<int> s;
        // virtual void test();
        void test() {printf("1\n");}
        virtual void nimas() {printf("caonima");}
    };

    class C {
    public:
        int X;
    };
    class B : public A, C {
    public:
        void test() {printf("2\n");}
        void testb() {}
        void nimas() {printf("caonima666");}
    };

    class D {
    public:
        A a;
        C c;
    };
}


    class ZX {
    public:
        int xfd;
        void test() {printf("1");}
    };
    class A {
    public:
        int N;
        int C;
        vector<int> s;
        // virtual void test();
        void test() {printf("1\n");}
        virtual void nimas() {printf("caonima");}
    };

    class C {
    public:
        int X;
    };
    class B : public A, C {
    public:
        void test() {printf("2\n");}
        void testb() {}
        void nimas() {printf("caonima666");}
    };

    class D {
    public:
        A a;
        C c;
    };


class E {};
void test(A &x) {
    x.test();
}
void tests() {
    mspace::A x;
    mspace::D d;
    mspace::B _b;
    mspace::B *b = (mspace::B* )&x;
    mspace::B *c = (mspace::B* )&d;
    b->testb();
    _b.nimas();
    mspace::A *cao = static_cast<mspace::A *>(b);
}
int main() {
    A x;
    x.s.push_back(1);x.s.push_back(1);x.s.push_back(1);x.s.push_back(1);
    D d;
    B _b;
    ZX v;
    v.test();
    B *b = (B* )&x;
    B *c = (B* )&d;
    b->testb();
    _b.nimas();
    A *cao = static_cast<A *>(b);
    STDClass xx;
    tests();
}
