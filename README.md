# Outline:
- An open-source tool created to make it easier for users to make command line wizards or surveys which are answer driven. The project has been published as a dart package and can be found [here](https://pub.dev/packages/cli_wizard_avs). Moreover, you can find an image conversion tool (PNG to JPEG and vice-versa) which has been built using this package [here](https://github.com/akashvshroff/Image_Conv_CLI).
- Details about why I created this project and how it was constructed can be found below.

# Purpose:
- Before I began learning Flutter properly, properly here is a slightly tricky word and I mean it to be learnt how to methodically craft Flutter apps bearing in mind proper state design and architectural principles, I wanted to learn Dart at a more foundational level. 
- Although I have some degree of experience with Java, I don't have any experience using the core concepts of Object Oriented Programming in any language except Python, and Python is such that a number of the core features of OOP are absent. Therefore, I wanted to solidify my understanding of Dart, not only to be able to learn Flutter but also better understand some foundational programming concepts.
- I completed this project as part of a Udemy course on [Flutter and Dart](https://www.udemy.com/course/dart-and-flutter-the-complete-developers-guide/learn/lecture/10645864?components=buy_button%2Cdiscount_expiration%2Cgift_this_course%2Cpurchase%2Cdeal_badge%2Credeem_coupon#overview), which I am finding an excellent resource in gaining an intermediate ability in Dart and the Flutter framework. 
- This build seemed rather simple on the surface, but having to understand how to create the tool within an OOP framework, learning about the basic file structure of a library and writing clean, reusable code made it so that the build was very engaging and its ease of use was paramount as I used it to create a file conversion tool as well.  

# Description:
- The project works through 3 main classes: [Option](https://github.com/akashvshroff/CLI_Wizard_Tool/blob/master/lib/src/option.dart), [Terminal](https://github.com/akashvshroff/CLI_Wizard_Tool/blob/master/lib/src/terminal.dart), [Prompter](https://github.com/akashvshroff/CLI_Wizard_Tool/blob/master/lib/src/prompter.dart), . Each of these offer different features to the final build and yet are essential to it. To fully understand the project structure, we can look at each class individually. 
- The [cli_wizard_avs.dart](https://github.com/akashvshroff/CLI_Wizard_Tool/blob/master/lib/cli_wizard_avs.dart) file serves as the *central interface point* for the project, as demonstrated by the example in the [main.dart](https://github.com/akashvshroff/CLI_Wizard_Tool/blob/master/example/main.dart) file wherein users simply need to import this one file and no other. 
- Individual details about each of the methods and the fields lie in the dart files and the comments and an overview of the classes lie below:

## Option:
- An instance of the option class represents each answer option that the user can select when given a choice. For example, if asked to pick a colour, there would be a list of Option objects, each representing a colour. 
- This class has two fields: label and value. The label is a String and merely reflects what is to be displayed to the user via the terminal. The value is dynamic and is what is returned after the user makes a choice. For the colours example, the label could be "I pick the colour red", while the value could simply be the hex-code of the colour. 

## Terminal:
- This class is used simply for IO purposes and therefore just prints information to the screen and returns the user's input. 
- It uses the dart:io package in order to handle the IO. 
- There is no treatment of data in this class and only stylistic changes are made to the data before displaying to the terminal and/or getting input. 
- The class employs a const constructor since it has no fields and therefore multiple instances of the class will not be useful, therefore by using a const constructor, any instances of the terminal class beyond the first instance will simply point to the same instance. 

## Prompter:
- This class levies the Terminal method in order to ask questions via its askBinary or askMultiple methods and returns the response to the user. 
- Although this class and the Terminal class could have been merged into one, they were separated to allow for a different medium for IO in the future, for example the Web.
- The ask private method simply controls the terminal class and uses it to print a prompt and a list of Option instances to the screen, returning data to the askBinary or askMultiple methods that call it. 

