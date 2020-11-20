import 'terminal.dart';
import 'option.dart';

final Terminal _terminal = const Terminal();

class Prompter {
  bool askBinary(String prompt) {
    // ask yes or no questions -> returns true if yes
    String input = _ask('$prompt (y/n)', []);
    return input.toUpperCase().startsWith("Y");
  }

  dynamic askMultiple(String prompt, List<Option> options) {
    // ask a multiple choice question, returns the value of the option selected
    String input = _ask(prompt, options);
    try {
      return options[int.parse(input) - 1].value;
    } catch (err) {
      return askMultiple(prompt, options);
    }
  }

  String _ask(String prompt, List<Option> options) {
    // driver for ask, interaction point with the terminal class
    _terminal.clearScreen();
    _terminal.printPrompt(prompt);
    _terminal.printOptions(options);
    return _terminal.collectInput();
  }
}
