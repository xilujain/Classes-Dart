import 'dart:io';
import 'dart:math';
import 'laptop.dart';
import 'house.dart';
import 'camera.dart';

void main(List<String> arguments) {
  // Q1:
  int phoneNumber = 0000000000;
  String name = "YOUR PHONE NUMBER";

  // Q2:
  print("Enter the height: ");
  int height = int.parse(stdin.readLineSync()!);
  print("Enter the width: ");
  int width = int.parse(stdin.readLineSync()!);
  computeArea(height, width);

  // Q4:
  for (var i = 1; i <= 100; i++) {
    if (i % 2 == 0) {
      print("The number $i is even");
    } else {
      print("The number $i is odd");
    }
  }

  // Q5:
  int num1 = 100;
  int num2 = 150;
  int sum = num1 + num2;
  int sub = num2 - num1;
  int multi = num1 * num2;
  double division = num2 / num1;
  print("sum of two numbers are: $sum");
  print("subtraction of two numbers are: $sub");
  print("multiplication of two numbers are: $multi");
  print("division of two numbers are: $division");

  // Q6:
  print(generatePassword());

  // Q7:
  print(reverse("lujain"));

  //Q8:
  List<String> names = ['lujain', 'salah', 'bugis'];
  print("all names on the list: ");
  for (var i = 0; i < names.length; i++) {
    print(names[i]);
  }

  //Q9:
  Set<String> fruits = {'apple', 'pineapple', 'banana', 'strawberry'};
  print("all fruits on the list: ");
  for (var element in fruits) {
    print(element);
  }

  //Q10:
  List<String> days = [];
  days.add('saturday');
  days.add('sunday');
  days.add('monday');
  days.add('tuesday');
  days.add('wednesdayday');
  days.add('thursday');
  days.add('friday');
  print("the list of days: ");
  for (var element in days) {
    print(element);
  }

  //Q11:
  Map<String, dynamic> information = {'name': 'lama', 'phone': 0538509289};
  Iterable key = information.keys.where((element) => element.length == 4);
  print(key.toList());

  //Q12:
  Laptop lenovo = Laptop(1, 'lenovo', 16);
  Laptop hp = Laptop(2, 'hp', 8);
  Laptop huwawi = Laptop(3, 'huwawi', 16);
  List<Laptop> listLaptops = [lenovo, hp, huwawi];
  for (Laptop element in listLaptops) {
    print('ID: ${element.id}, name or type: ${element.name}, RAM: ${element.ram}');
  }

  //Q13:
  House house1 = House(1, 'lujain', 16000);
  House house2 = House(2, 'salah', 12000);
  House house3 = House(3, 'thamer', 20000);
  List<House> listHouse = [house1, house2, house3];
  for (House element in listHouse) {
    print('ID: ${element.id}, house name: ${element.name}, price: ${element.price}');
  }

  //Q14:id, brand, color, price
  Camera camera1 = Camera(1, 'canon', 'black', 2000);
  Camera camera2 = Camera(2, 'nikon', 'grey', 4000);
  Camera camera3 = Camera(3, 'sony', 'black', 4500);
  List<Camera> listCamera = [camera1, camera2, camera3];
  for (Camera element in listCamera) {
    print('ID: ${element.getID}, camera brand: ${element.getBrand}, color: ${element.getColor}, price: ${element.getPrice}');
  }
}

// Q3:
computeArea(height, width) {
  int area = height * width;
  print("The area of the square is: $area");
}

// Q6:
generatePassword() {
  const capitalChar = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  const smallChar = 'abcdefghijklmnopqrstuvwxz';
  const numbers = '1234567890';
  String password = capitalChar + smallChar + numbers;
  List<String> listPass = password.split('').toList();
  Random random = Random();
  String newPassword = '';

  for (var i = 0; i <= 8; i++) {
    int randomIndex = random.nextInt(listPass.length);
    newPassword += listPass[randomIndex];
  }
  return "new random password: $newPassword";
}

// Q7:
reverse(String name) {
  String reverseName = name.split('').reversed.join();
  return "reverse name: $reverseName";
}
