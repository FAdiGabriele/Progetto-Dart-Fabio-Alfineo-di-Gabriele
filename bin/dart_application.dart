import 'package:dart_project/dart_function_library.dart' as dart_application;
import 'package:dart_project/Person.dart';

void main(List<String> arguments) {
  print("Richiesta 1");
  dart_application.printTriangle(6);

  print("\nRichiesta 2");
  dart_application.printIsPalindrome("ingegni");

  dart_application.printIsPalindrome("gatto");

  dart_application.printIsPalindrome("Anna");

  print("\nRichiesta 3");
  dart_application.printRectagleArea(4, 6);

  print("\nRichiesta 4");
  dart_application.printSumOrTripleSumOfEquals(2, 3);

  dart_application.printSumOrTripleSumOfEquals(2, 2);

  print("\nRichiesta 6");

  print(Person("Mario", "Rossi", "mario.rossi@email.it", "Persona1_2023", "01/01/1990"));
  print(Person("Luigi", "Bianchi", "luigi.bianchi@email.it", "Persona2_2023", "01/06/1980"));
}
