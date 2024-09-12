String concatenate(String firstName, String lastName) {
  return "$firstName $lastName";
}

String reverse(String input) {
  return input.split('').reversed.join('');
}

String convertToUpperCase(String input) {
  return input.toUpperCase();
}

String convertToLowerCase(String input) {
  return input.toLowerCase();
}

String extractSubstring(String input, int start, int end) {
  return input.substring(start, end);
}

int getStringLength(String input) {
  return input.length;
}
