int add_by_position(num1, num2) {
  return num1 + num2;
}

int add_by_name({num1, num2}) {
  return num1 + num2;
}

void demo() {
  add_by_position(2, 3);
  add_by_name(num1: 2, num2: 3);
}
