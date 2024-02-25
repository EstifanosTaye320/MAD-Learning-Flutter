void main() {
  // adding content conditionaly to a list using if statments
  bool condition = "sun" == "day";
  final myList = [1, 2, if (condition) 3 else 4];

  print(myList);
}
