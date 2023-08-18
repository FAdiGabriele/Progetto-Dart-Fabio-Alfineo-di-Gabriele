import 'package:dart_project/dart_function_library.dart';
import 'package:test/test.dart';
import 'package:dart_project/University.dart';
import 'package:dart_project/Person.dart' as persona_request;

void main() {
  test('isPalindrom true', () {
    expect(isPalindrome("ingegni"), true);
  });

  test('isPalindrom true 2', () {
    expect(isPalindrome("Ossesso"), true);
  });

  test('isPalindrom false', () {
    expect(isPalindrome("gatto"), false);
  });

  test('getRectangleArea works', () {
    expect(getRectangleArea(3, 4), 12);
  });

  test("getSumOrTripleSumOfEquals different values", () {
    expect(getSumOrTripleSumOfEquals(3, 4), 7);
  });

  test("getSumOrTripleSumOfEquals same values", () {
    expect(getSumOrTripleSumOfEquals(3, 3), 18);
  });

  test('isPraticExamGradeNotValid true', () {
    expect(isPraticExamGradeNotValid(-3), true);
  });

  test('isPraticExamGradeNotValid false', () {
    expect(isPraticExamGradeNotValid(18), false);
  });

  test('isWrittenExamGradeNotValid true', () {
    expect(isPraticExamGradeNotValid(-8), true);
  });

  test('isWrittenExamGradeNotValid false', () {
    expect(isPraticExamGradeNotValid(1), false);
  });

  test("getExamGrade invalid praticExamGrade", () {
    expect(getExamGrade(-3, 4), "Prova Pratica non valida");
  });

  test("getExamGrade invalid praticExamGrade 2", () {
    expect(getExamGrade(25, 4), "Prova Pratica non valida");
  });

  test("getExamGrade invalid writtenExamGrade", () {
    expect(getExamGrade(21, -9), "Prova Scritta non valida");
  });

  test("getExamGrade invalid writtenExamGrade 2", () {
    expect(getExamGrade(21, 9), "Prova Scritta non valida");
  });

  test("getExamGrade low grade", () {
    expect(getExamGrade(10, 4), "Bocciato");
  });

  test("getExamGrade max grade", () {
    expect(getExamGrade(24, 8), "30 e lode");
  });

  test("getExamGrade normal grade", () {
    expect(getExamGrade(21, 4), "25");
  });

  test("getAverage works", () {
    expect(getAverage([2, 4, 6, 8]), 5);
  });

  test("create persona works", () {
    persona_request.Person persona = persona_request.Person(
        "nome_persona",
        "cognome_persona",
        "email_persona",
        "passowrd_persona",
        "data_di_nascita");

    expect(persona.name, "nome_persona");
    expect(persona.surname, "cognome_persona");
    expect(persona.email, "email_persona");
    expect(persona.password, "passowrd_persona");
    expect(persona.dateOfBirth, "data_di_nascita");
  });

  test("create docente works", () {
    Professor docente =
        Professor("nome_docente", "cognome_docente", "codice_docente", 38);

    expect(docente.getName(), "nome_docente");
    expect(docente.getSurname(), "cognome_docente");
    expect(docente.getId(), "codice_docente");
    expect(docente.getAge(), 38);
  });

  test("create studente works", () {
    Student studente =
        Student("nome_studente", "cognome_studente", "codice_studente", 20);

    expect(studente.getName(), "nome_studente");
    expect(studente.getSurname(), "cognome_studente");
    expect(studente.getId(), "codice_studente");
    expect(studente.getAge(), 20);
  });
}
                                                            