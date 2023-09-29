
//  import 'dart:io';

// void main(){
//   var studentList = [
// {"name": "Sabeel", "rollnum": "12","class": "X"},
// {"name": "Sabeel", "rollnum": "12","class": "XI"},
// {"name": "Sabeel", "rollnum": "12","class": "XII"},
// ];
// for (var student in studentList) {
//   if(student["name"]== "sabeel"&& student["rollnum"] == "12"){
//     print(student);
//   }else{
//     print(student);
//     print("Usee not matched");
//   }
// }
// }
// WHILE LOOP
// int a = 1;
// while (a < 10) {
// print(a);
// a++;
// }
// }
// print("enter email :");
// var email = stdin.readLineSync();

// print("Enter Password");
// var password = stdin.readLineSync();
// bool auth = false;
//WHILE LOOP FICTORIAL PROGRAM   [concatination]
// import 'dart:io';
// void main(){
// int factnum = int.parse(stdin.readLineSync()!); //5
// int result = 1;//5>=1 true
// while(factnum >= 1){
// //result = result * factnum;
// result *= factnum;
// factnum--;//5--4=4
//  }
// print(result);
// }
//DO WHILE LOOP
// void main(){
// // var a = 11;
// // do{
// //   print(a);
// //   a++;
// // }while (a < 10);
// factorial(6);
// factorial(5);
//  }
// factorial(int factnum){
//  // int factnum = int.parse(stdin.readLineSync()!); //5
//  int result = 1;//5>=1 true
// while(factnum >= 1){
// result = result * factnum;
// result *= factnum;
// factnum--;//5--4=4
//  }
// print(result);
// }

//ASSIGNMENT 5 UNIT CONVERSION 
import 'dart:io';

void main() {
  //ASKING USER TO SELECT ANY OPTION 
  while (true) {
    print("Select an option:");
    print("1. Length Conversion");
    print("2. Temperature Conversion");
    print("3. Area Conversion");
    print("4. Weight Conversion");
    print("5. Time Conversion");
    print("6. Quit");
    
    //ASKING FOR NPUT DESIRED OPTION FROM USER
    int choice = int.parse(stdin.readLineSync()!);

    //IF USER CHOOSE 6 THEN LOOP WILL BREAK
    if (choice == 6) {
      break;
    }
    
    //OTHERWISE LOOP WILL CONTINUE AND RECALL EVERY FUNCTION
    switch (choice) {
      case 1:
        lengthConversion();
        break;
      case 2:
        temperatureConversion();
        break;
      case 3:
        areaConversion();
        break;
      case 4:
        weightConversion();
        break;
      case 5:
        timeConversion();
        break;
        //IF USER CHOOSR ANY OTHER OPTION BY HIS CHOICE NOT CHOOSE GIVEN FUNCTION THEN IT WILL PRINT THIS
      default:
        print("Invalid choice. Please select a valid option.");
        break;
    }
  }
}
//MAKING ANOTHER FUNCTION 
void lengthConversion() {
  print("Select a length conversion option:");
  print("1. Meter to Kilometers");
  print("2. Kilometers to Meters");
  print("3. Feet to Inches");
  print("4. Inches to Feet");
  print("5. Centimeter to Meter");
  print("6. Meter to Centimeter");

  int choice = int.parse(stdin.readLineSync()!);

  double result;

  switch (choice) {
    case 1:
      print("Enter length in meters:");
      double meters = double.parse(stdin.readLineSync()!);
      result = meters / 1000;
      break;
    case 2:
      print("Enter length in kilometers:");
      double kilometers = double.parse(stdin.readLineSync()!);
      result = kilometers * 1000;
      break;
    case 3:
      print("Enter length in feet:");
      double feet = double.parse(stdin.readLineSync()!);
      result = feet * 12;
      break;
    case 4:
      print("Enter length in inches:");
      double inches = double.parse(stdin.readLineSync()!);
      result = inches / 12;
      break;
    case 5:
      print("Enter length in centimeters:");
      double centimeters = double.parse(stdin.readLineSync()!);
      result = centimeters / 100;
      break;
    case 6:
      print("Enter length in meters:");
      double meters = double.parse(stdin.readLineSync()!);
      result = meters * 100;
      break;
    default:
      print("Invalid choice. Please select a valid option.");
      return;
  }

  print("Result: $result");
  askToContinue();
}

void temperatureConversion() {
  print("Select a temperature conversion option:");
  print("1. Fahrenheit to Celsius");
  print("2. Celsius to Fahrenheit");

  int choice = int.parse(stdin.readLineSync()!);

  double result;

  switch (choice) {
    case 1:
      print("Enter temperature in Fahrenheit:");
      double fahrenheit = double.parse(stdin.readLineSync()!);
      result = (fahrenheit - 32) * 5 / 9;
      break;
    case 2:
      print("Enter temperature in Celsius:");
      double celsius = double.parse(stdin.readLineSync()!);
      result = (celsius * 9 / 5) + 32;
      break;
    default:
      print("Invalid choice. Please select a valid option.");
      return;
  }

  print("Result: $result");
  askToContinue();
}

void areaConversion() {
  print("Select an area conversion option:");
  print("1. Square Miles to Square Yards");
  print("2. Square Yards to Square Miles");
  print("3. Square Yards to Square Feet");
  print("4. Square Feet to Square Yards");

  int choice = int.parse(stdin.readLineSync()!);

  double result;

  switch (choice) {
    case 1:
      print("Enter area in square miles:");
      double squareMiles = double.parse(stdin.readLineSync()!);
      result = squareMiles * 3097600;
      break;
    case 2:
      print("Enter area in square yards:");
      double squareYards = double.parse(stdin.readLineSync()!);
      result = squareYards / 3097600;
      break;
    case 3:
      print("Enter area in square yards:");
      double squareYards = double.parse(stdin.readLineSync()!);
      result = squareYards * 9;
      break;
    case 4:
      print("Enter area in square feet:");
      double squareFeet = double.parse(stdin.readLineSync()!);
      result = squareFeet / 9;
      break;
    default:
      print("Invalid choice. Please select a valid option.");
      return;
  }

  print("Result: $result");
  askToContinue();
}

void weightConversion() {
  print("Select a weight conversion option:");
  print("1. Kilograms to Grams");
  print("2. Grams to Kilograms");
  print("3. Pounds to Kilograms");
  print("4. Kilograms to Tons");
  print("5. Tons to Kilograms");

  int choice = int.parse(stdin.readLineSync()!);

  double result;

  switch (choice) {
    case 1:
      print("Enter weight in kilograms:");
      double kilograms = double.parse(stdin.readLineSync()!);
      result = kilograms * 1000;
      break;
    case 2:
      print("Enter weight in grams:");
      double grams = double.parse(stdin.readLineSync()!);
      result = grams / 1000;
      break;
    case 3:
      print("Enter weight in pounds:");
      double pounds = double.parse(stdin.readLineSync()!);
      result = pounds * 0.453592;
      break;
    case 4:
      print("Enter weight in kilograms:");
      double kilograms = double.parse(stdin.readLineSync()!);
      result = kilograms / 1000;
      break;
    case 5:
      print("Enter weight in tons:");
      double tons = double.parse(stdin.readLineSync()!);
      result = tons * 1000;
      break;
    default:
      print("Invalid choice. Please select a valid option.");
      return;
  }

  print("Result: $result");
  askToContinue();
}

void timeConversion() {
  print("Select a time conversion option:");
  print("1. Seconds to Minutes");
  print("2. Minutes to Seconds");
  print("3. Minutes to Hours");
  print("4. Seconds to Hours");
  print("5. Milliseconds to Minutes");
  print("6. Milliseconds to Hours");

  int choice = int.parse(stdin.readLineSync()!);

  double result;

  switch (choice) {
    case 1:
      print("Enter time in seconds:");
      int seconds = int.parse(stdin.readLineSync()!);
      result = seconds / 60;
      break;
    case 2:
      print("Enter time in minutes:");
      int minutes = int.parse(stdin.readLineSync()!);
      result = minutes * 60;
      break;
    case 3:
      print("Enter time in minutes:");
      int minutes = int.parse(stdin.readLineSync()!);
      result = minutes / 60;
      break;
    case 4:
      print("Enter time in seconds:");
      int seconds = int.parse(stdin.readLineSync()!);
      result = seconds / 3600;
      break;
    case 5:
      print("Enter time in milliseconds:");
      int milliseconds = int.parse(stdin.readLineSync()!);
      result = milliseconds / 60000;
      break;
    case 6:
      print("Enter time in milliseconds:");
      int milliseconds = int.parse(stdin.readLineSync()!);
      result = milliseconds / 3600000;
      break;
    default:
      print("Invalid choice. Please select a valid option.");
      return;
  }

  print("Result: $result");
  askToContinue();
}

//MAKING LAST FUNCTION FOR BREAKING LOOP IF USER EXIST THE APPLICATION
void askToContinue() {
  print("Do you want to continue?");
  print("1. Yes");
  print("2. No");
  int choice = int.parse(stdin.readLineSync()!);

  if (choice == 2) {
    exit(0);
  }
}
