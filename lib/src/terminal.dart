import 'dart:io';
import 'option.dart';

class Terminal {
  const Terminal();

  void printPrompt(String prompt) {
    // prompt to display to the users
    stdout.writeln(prompt);
  }

  void clearScreen() {
    // checks the os and clears the terminal screen
    if (Platform.isWindows) {
      stdout.write('\x1B[2J\x1B[0f');
    } else {
      stdout.write('x1B[2J\x1B[3J\x1B[H');
    }
  }

  String collectInput() {
    // get user input as a string and return it
    return stdin.readLineSync();
  }

  void printOptions(List<Option> options) {
    /* takes in a list of option instances and displays their labels with
    their 1-based indices. */
    options.asMap().forEach((key, value) {
      stdout.writeln('[${key + 1}] ${value.label}');
    });

    stdout.writeln('\nEnter your choice:');
    stdout.write('>');
  }
}
