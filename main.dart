import 'dart:io';
import 'lib/string_manipulation.dart';
import 'lib/collections.dart';
import 'lib/file_handling.dart';
import 'lib/date_time_utilities.dart';

void main() async {
  // String Manipulation
  print("Enter your first name:");
  String firstName = stdin.readLineSync() ?? "";
  print("Enter your last name:");
  String lastName = stdin.readLineSync() ?? "";

  String fullName = concatenate(firstName, lastName);
  String reversedName = reverse(fullName);

  print("Full Name: $fullName");
  print("Reversed Name: $reversedName");
  print("Uppercase Name: ${convertToUpperCase(fullName)}");
  print("Length of Name: ${getStringLength(fullName)}");

  // Collections
  List<String> fruits = manipulateList(["Apple", "Banana", "Mango"]);
  Set<String> colors = manipulateSet({"Red", "Green", "Blue"});
  Map<String, int> people = manipulateMap({"Alice": 25, "Bob": 30});

  print("Fruits: $fruits");
  print("Colors: $colors");
  print("People: $people");

  // File Handling
  await writeFile('results.txt', "Name: $fullName, Reversed: $reversedName\n");
  print("File written. Content:");
  print(await readFile('results.txt'));

  // Date and Time
  DateTime now = DateTime.now();
  DateTime futureDate = addDaysToDate(now, 5);
  DateTime pastDate = subtractDaysFromDate(now, 3);

  print("Now: $now");
  print("Future Date: $futureDate");
  print("Past Date: $pastDate");
  print("Difference in days: ${differenceBetweenDates(futureDate, now).inDays}");

  await writeFile('results.txt', "Time logged: $now\n");
}
