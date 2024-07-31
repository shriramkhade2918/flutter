class Test {
  int x = 30;
  int y = 30;
}

class Test2 extends Test {
  int x;
  Test2(this.x);
  void gun() {
    this.x = 8;
    this.y = 19;
  }

  void fun() {
    print(super.x);
    print(super.y);
  }
}

void main() {
  Test2 obj = Test2(10);
  obj.gun();
  obj.fun();
}
