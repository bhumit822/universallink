import 'dart:math';

void main() {
// Get the current time in milliseconds since epoch
  int currentTime = DateTime.now().millisecondsSinceEpoch;

  // Create a Random object seeded with the current time
  Random random = Random(currentTime);

  // Define the characters to be used in the PIN
  const String letters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
  const String digits = '0123456789';

  // Generate 4 random letters
  String pin = '';
  for (int i = 0; i < 3; i++) {
    pin += letters[random.nextInt(letters.length)];
  }

  // Generate 2 random digits
  for (int i = 0; i < 9; i++) {
    pin += digits[random.nextInt(digits.length)];
  }

  // Shuffle the characters in the PIN
  List<String> pinChars = pin.split('')..shuffle(random);

  // Join the characters to form the final PIN
  String finalPin = pinChars.join('');

  print('Generated PIN: $finalPin');
}
