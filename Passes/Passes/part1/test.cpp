#include <cstdio>
int f(int i) {
    int ret = 0;
    ret += i / 2;
    int k = 3 + i;
    ret += k;
    if ( ret > 10) {
        ret += 2;
    }
    if (ret > 10) {
        ret += 2;
    } else ret += 3;
    return ret;
}
int main() {
    printf("%d", f(10));
}
