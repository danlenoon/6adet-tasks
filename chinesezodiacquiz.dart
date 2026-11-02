// Lenon, Danielle Laurence B. | CS-301 | 7.9.2025

import 'dart:io';

List<String> zodiacList = ['Monkey', 'Rooster', 'Dog', 'Pig', 'Rat', 'Ox', 'Tiger', 'Rabbit', 'Dragon', 'Snake', 'Horse', 'Goat'];

void main() {
  String? tryagain;

  do {
    int? day, dayinputparsed, month, monthinputparsed, year, yearinputparsed;
    String? dayinput, monthinput, name, yearinput;
    String horoscope, zodiac;

    do {
      stdout.write("\nEnter your Name: "); name = stdin.readLineSync();

      if (name == null || name.trim().isEmpty) {
        print("ERROR: Invalid input for name.");
      }
    } while (name == null || name.trim().isEmpty);

    while (day == null) {
      stdout.write("Enter your birth day (1-31): "); dayinput = stdin.readLineSync();
      dayinputparsed = int.tryParse(dayinput ?? "");

      if (dayinputparsed == null || dayinputparsed < 1 || dayinputparsed > 31) {
        print("ERROR: Invalid input for the birth day.\n");
      } else {
        day = dayinputparsed;
      }
    }

    while (month == null) {
      stdout.write("Enter your birth month (1-12): "); monthinput = stdin.readLineSync();
      monthinputparsed = int.tryParse(monthinput ?? "");

      if (monthinputparsed == null || monthinputparsed < 1 || monthinputparsed > 12) {
        print("ERROR: Invalid input for the birth month.\n");
      } else {
        month = monthinputparsed;
      }
    }

    while (year == null) {
      stdout.write("Enter your birth year: "); yearinput = stdin.readLineSync();
      yearinputparsed = int.tryParse(yearinput ?? "");

      if (yearinputparsed == null || yearinputparsed < 1) {
        print("ERROR: Invalid input for the birth year.\n");
      } else {
        year = yearinputparsed;
      }
    }

    zodiac = getZodiacSign(year);
    horoscope = getHoroscope(zodiac);
    print(displayChineseZodiacSignandHoroscope(horoscope, name, zodiac));

    do {
      stdout.write("Do you want to try again? (yes/no): "); tryagain = stdin.readLineSync()?.toLowerCase().trim();

      if (tryagain != "no" && tryagain != "yes") {
        print("ERROR: Invalid input for trying again.\n");
      }
    } while (tryagain != "no" && tryagain != "yes");

    if (tryagain == "no") {
      print("Thank you for using the program!");
    }

  } while (tryagain == "yes");
}

String getZodiacSign(int year) {
  return zodiacList[year % 12];
}

String getHoroscope(String sign) {
  switch (sign) {
    case 'Rat': return "\nPeople born in the year of the Rat tend to be economical and enjoy saving and collecting. They never experience financial hardship and live organized lives. If you receive a valuable gift from a Rat, know that they think highly of you because they don't usually like opening their wallet for others.\n";
    case 'Ox': return "\nPeople born in the year of the Ox are hard workers and have a strong sense of responsibility. Even if they run into difficulty during work, they'll persevere. They aren't very romantic, but are patient and would never force themselves onto someone who doesn't like them.\n";
    case 'Tiger': return "\nPeople born in the year of the Tiger are independent and have high self-esteem. They enjoy being the leader and protector of average people. They love justice and never back down in an argument. Recklessness is a significant weakness for these because it causes them to fail.\n";
    case 'Rabbit': return "\nPeople born in the year of the Rabbit are gentle, quiet, and polite. They are patient, intelligent, and chic. Their sense of responsibility and attention to detail lead to better career success.\n";
    case 'Dragon': return "\nPeople born in the year of the Dragon have hearts full of adventure and romance. It's hard for people to understand a Dragon's mysterious personality. At the same time, they are indifferent to things the average person worries about.\n";
    case 'Snake': return "\nPeople born in the year of the Snake are idealists. On the outside, they may seem cold, but deep inside, they are warm and enthusiastic. Their desire for exclusive ownership is fierce.\n";
    case 'Horse': return "\nPeople born in the year of the Horse are never ones to surrender. They are always positive and energetic, pushing themselves forward. A significant desire for these is having the freedom to do (what they like) and express themselves.\n";
    case 'Goat': return "\nPeople born in the year of the Goat have a pure and kind heart. They'd rather suffer silently than argue and ruin someone else's mood. However, even in silence, they still hold onto their own opinion.\n";
    case 'Monkey': return "\nPeople born in the year of the Monkey do things based on interest. If it's something they don't quite care for, they'll do the work sloppily. If it's something they're interested in, they'll put their entire heart into it and work until success.\n";
    case 'Rooster': return "\nPeople born in the year of the Rooster can sense what another person is thinking or feeling. They have quick reactions and high emotional intelligence. They make great friends, although some are cunning. Roosters are creative and talented in the arts, although few find a career in that field.\n";
    case 'Dog': return "\nPeople born in the year of the Dog are conservative and full of justice. Because of their loyalty, the workplace values Dogs. They rarely break rules, except for people important to them.\n";
    case 'Pig': return "\nPeople born in the year of the Pig think logically and can fix whatever problem they're in. They aren't good communicators, but they're kind and able to provide for the family. Most of them are wealthy.\n";
    default: return "\nHoroscope description is not available because it is outside the range of the 12 Chinese Zodiac Signs.\n";
  }
}

String displayChineseZodiacSignandHoroscope(String horoscope, String name, String zodiac) {
  return "\n$name, Your Chinese Zodiac Sign is: $zodiac\n$horoscope";
}