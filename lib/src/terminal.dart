import 'dart:io';
import 'option.dart';

class Terminal {
  const Terminal();

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
    options.asMap().forEach((key, value) {
      stdout.writeln('[${key + 1}] ${value.label}');
    });

    stdout.writeln('\nEnter your choice:');
    stdout.write('>');
  }
}
