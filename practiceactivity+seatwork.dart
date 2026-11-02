// Lenon, Danielle Laurence B. | CS-301 | 7.9.2025

import 'dart:io';

void main() {
  int category = 0;
  String? ageInput, Iam, name;
  String? Again = 'y';

  while (Again != 'q') {
    stdout.write("Enter Your Name: "); name = stdin.readLineSync();

    if (name == null || name.trim().isEmpty) {
      print("ERROR: Invalid input for name.\n"); continue;
    }

    stdout.write("Hello, $name! How old are you?: "); ageInput = stdin.readLineSync();

    if (ageInput == null || ageInput.trim().isEmpty) {
      print("ERROR: Invalid input for age.\n"); continue;
    }

    int? numage = int.tryParse(ageInput);

    if (numage == null) {
      print("ERROR: Invalid input for age.\n"); continue;
    }

    if (numage == 1) {
      print("You are $numage year old.");
    } else if (numage >= 0 && numage != 1) {
      print("You are $numage years old.");
    }

    if (numage >= 0 && numage < 3) {
      Iam = "baby";
      category = 1;
    } else if (numage >= 3 && numage < 5) {
      Iam = "toddler";
      category = 2;
    } else if (numage >= 5 && numage < 7) {
      Iam = "child";
      category = 3;
    } else if (numage >= 7 && numage < 13) {
      Iam = "kid";
      category = 4;
    } else if (numage >= 13 && numage < 20) {
      Iam = "teenager";
      category = 5;
    } else if (numage >= 20 && numage < 60) {
      Iam = "adult";
      category = 6;
    } else if (numage >= 60) {
      Iam = "senior citizen";
      category = 7;
    } else {
      Iam = "not born";
    }

    switch (category) {
      case 1: print("You are a $Iam\nand you need to sleep!"); break;
      case 2: print("You are a $Iam\nand you need to talk!"); break;
      case 3: print("You are a $Iam\nand you need to play!"); break;
      case 4: print("You are a $Iam\nand you need to think!"); break;
      case 5: print("You are a $Iam\nand you need to study!"); break;
      case 6: print("You are an $Iam\nand you need to work!"); break;
      case 7: print("You are a $Iam\nand you need to rest!"); break;
      default: print("Not yet implemented!\nYou are $Iam yet!"); break;
    }

    while (true) {
      stdout.write("Enter a character (q to quit): "); Again = stdin.readLineSync();

      if (Again == null || Again.trim().isEmpty || Again.trim().length != 1) {
        print("ERROR: Invalid input for quitting the program.\n"); continue;
      } else if (Again == 'q') {
        print("Thank you for using the program!");
      }

      Again = Again.trim(); break;
    }
  }
}