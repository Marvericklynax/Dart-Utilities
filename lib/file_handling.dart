import 'dart:io';

Future<String> readFile(String path) async {
  try {
    return await File(path).readAsString();
  } catch (e) {
    return "Error reading file: $e";
  }
}

Future<void> writeFile(String path, String content) async {
  try {
    await File(path).writeAsString(content, mode: FileMode.append);
  } catch (e) {
    print("Error writing file: $e");
  }
}
