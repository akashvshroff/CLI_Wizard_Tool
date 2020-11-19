import 'terminal.dart';
import 'option.dart';

final Terminal _terminal = const Terminal();

class Prompter {
  dynamic ask(String prompt, List<Option> options) {
    _terminal.clearScreen();
    _terminal.printPrompt(prompt);
    _terminal.printOptions(options);
    final String input = _terminal.collectInput();
    return options[int.parse(input)].value;
  }
}
