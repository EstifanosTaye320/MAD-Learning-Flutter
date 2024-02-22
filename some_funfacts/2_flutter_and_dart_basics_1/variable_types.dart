void main() {
  // this is the declaration of an int variable that can be null
  int? startingNumber;

  startingNumber = 2;

  print(startingNumber + 2);

  // this is the declaration of a variable with an initial value
  var theNumber = 2;

  print(theNumber);

  // this is the declaration of a dynamic variable that can be of any type
  var theOtherNumber;

  theOtherNumber = 3;
  theOtherNumber = "i'm a number";

  print(theOtherNumber);

  // when the value will never change can take a function that is dynamic
  final permanent = "not changing, may be calculated value";

  print(permanent);

  // const like final can't change but is constant and fixed
  const otherpermanent = "not changing, constant no matter what";

  print(otherpermanent);
}
