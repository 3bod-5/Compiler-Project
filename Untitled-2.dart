import 'dart:io';

int i = 0;
List<String> s = [];

void S() {
  //!S
  if (s[i] == "a") {
    i++;
    B();
    if (s[i] == "a") {
      valid();
    } else {
      isnotvalid();
    }
  } else if (s[i] == "b") {
    i++;
    A();
    if (s[i] == "b") {
      valid();
    } else {
      isnotvalid();
    }
  } else {
    isnotvalid();
  }
}

//********************************** */
void A() {
  //!A
  if (s[i] == "b") {
    isnotvalid();
  } else if (s[i] == "a") {
    i++;
  }
}

//*********************************** */
void B() {
  //!B
  if (s[i] == "a") {
    isnotvalid();
  } else if (s[i] == "b") {
    i++;
  }
}

void isnotvalid() {
  print("string is not valid");
  exit(0);
}

//****************************** */
void valid() {
  print("string is valid");
  exit(0);
}

void main() {
  print("Grammar is "); // display grammar to user
  print("S => aBa");
  print("S => bAb");
  print("A => a");
  print("B => b");
  print("Enter the string"); // recive string from user

  s = stdin.readLineSync()!.split('');

  // start parsing
  S();

  if (s[i] == "") {
    print("string is valid");
  } else {
    print("string is not valid");
  }
}





//!    a b a
//?    0
//?    1
//?    2
