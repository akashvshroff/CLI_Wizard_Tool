import 'terminal.dart';
import 'option.dart';

final Terminal _terminal = const Terminal();

class Prompter {
  Option ask(String prompt, List<Option> options) {
    _terminal.clearScreen();
    _terminal.printPrompt(prompt);
    _terminal.printOptions(options);
    String response = _terminal.collectInput();
    print(response);
  }
}
