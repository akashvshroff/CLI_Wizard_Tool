import 'package:cli_wizard_avs/cli_wizard_avs.dart';

void main() {
  List<Option> options = [
    Option(label: 'I want red', value: '#f00'),
    Option(label: 'I want blue', value: '#00f'),
    Option(label: 'I want white', value: '#fff'),
    Option(label: 'I want black', value: '#000'),
  ];
  final prompter = Prompter();

  String colourCode = prompter.askMultiple('Select a colour', options);

  bool answer = prompter.askBinary('Do you like this lib?');

  print('colour code selected: $colourCode');
  print('answer entered: $answer');
}
