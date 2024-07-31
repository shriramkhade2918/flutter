class Test {
  int x = 10;
  Test(this.x);
}

class Test2 extends Test {
  Test2(super.x);
}

void main() {
  Test2 obj = Test2(10);
  Test obj2 = Test(30);
  obj.x = 19;
  print(obj.x);
  print(obj2.x);
}
