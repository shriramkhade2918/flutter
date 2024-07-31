class Demo {
  void fun();
}

class Demo1 implements Demo {
  void fun() {}
}

void main() {
  Demo obj = Demo1();
}
