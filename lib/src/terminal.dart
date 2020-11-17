import 'dart:io';
import 'option.dart';

class Terminal {
  void printPrompt(String prompt) {
    stdout.writeln(prompt);
  }

  void clearScreen() {
    if (Platform.isWindows) {
      stdout.write('\x1B[2J\x1B[0f');
    } else {
      stdout.write('x1B[2J\x1B[3J\x1B[H');
    }
  }

  String collectInput() {
    return stdin.readLineSync();
  }

  void printOptions(List<Option> options) {
    for (int i = 0; i < options.length; i++) {
      stdout.writeln('${i + 1}) ${options[i].label}');
    }
    stdout.writeln('Enter the number of your choice\n');
    stdout.write('>');
  }
}
