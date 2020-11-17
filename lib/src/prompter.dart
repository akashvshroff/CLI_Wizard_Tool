import 'terminal.dart';
import 'option.dart';

final Terminal terminal = Terminal();

class Prompter {
  Option ask(String prompt, List<Option> options) {
    terminal.clearScreen();
    terminal.printPrompt(prompt);
    terminal.printOptions(options);
    String response = terminal.collectInput();
    print(response);
  }
}
