import 'package:dart_project/dart_function_library.dart' as dart_application;
import 'package:dart_project/Persona.dart';

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
  dart_application.printSommaProdotto(2, 3);

  dart_application.printSommaProdotto(2, 2);

  print("\nRichiesta 6");

  print(Persona("Mario", "Rossi", "mario.rossi@email.it", "Persona1_2023", "01/01/1990"));
  print(Persona("Luigi", "Bianchi", "luigi.bianchi@email.it", "Persona2_2023", "01/06/1980"));
}
