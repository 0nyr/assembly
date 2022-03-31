int printall(int a) {
    putchar(a);
    putchar('b');
    return a;
}

void toto() {
    int x=1;
    int y=2;
    int z=3;
    putchar('a');
}

int main() {
    toto();
    return printall('a');
}