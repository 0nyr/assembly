void function() {
    putchar('a');
}

int getNumber() {
    return 1;
}

int main() {
    putchar('b');
    getNumber(); // no warning emmitted
    return 0;
}