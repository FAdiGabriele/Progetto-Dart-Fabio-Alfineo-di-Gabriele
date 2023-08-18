import 'package:dart_project/dart_function_library.dart';
import 'package:test/test.dart';
import 'package:dart_project/Universita.dart';
import 'package:dart_project/Persona.dart' as persona_request;

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

  test("getSommaProdotto different values", () {
    expect(getSommaProdotto(3, 4), 7);
  });

  test("getSommaProdotto same values", () {
    expect(getSommaProdotto(3, 3), 18);
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

  test("getExameGrade invalid praticExamGrade", () {
    expect(getExameGrade(-3, 4), "Prova Pratica non valida");
  });

  test("getExameGrade invalid praticExamGrade 2", () {
    expect(getExameGrade(25, 4), "Prova Pratica non valida");
  });

  test("getExameGrade invalid writtenExamGrade", () {
    expect(getExameGrade(21, -9), "Prova Scritta non valida");
  });

  test("getExameGrade invalid writtenExamGrade 2", () {
    expect(getExameGrade(21, 9), "Prova Scritta non valida");
  });

  test("getExameGrade low grade", () {
    expect(getExameGrade(10, 4), "Bocciato");
  });

  test("getExameGrade max grade", () {
    expect(getExameGrade(24, 8), "30 e lode");
  });

  test("getExameGrade normal grade", () {
    expect(getExameGrade(21, 4), "25");
  });

  test("getAverage works", () {
    expect(getAverage([2, 4, 6, 8]), 5);
  });

  test("create persona works", () {
    persona_request.Persona persona = persona_request.Persona(
        "nome_persona",
        "cognome_persona",
        "email_persona",
        "passowrd_persona",
        "data_di_nascita");

    expect(persona.nome, "nome_persona");
    expect(persona.cognome, "cognome_persona");
    expect(persona.email, "email_persona");
    expect(persona.password, "passowrd_persona");
    expect(persona.dataDiNascita, "data_di_nascita");
  });

  test("create docente works", () {
    Docente docente =
        Docente("nome_docente", "cognome_docente", "codice_docente", 38);

    expect(docente.getNome(), "nome_docente");
    expect(docente.getCognome(), "cognome_docente");
    expect(docente.getCodice(), "codice_docente");
    expect(docente.getEta(), 38);
  });

  test("create studente works", () {
    Studente studente =
        Studente("nome_studente", "cognome_studente", "codice_studente", 20);

    expect(studente.getNome(), "nome_studente");
    expect(studente.getCognome(), "cognome_studente");
    expect(studente.getCodice(), "codice_studente");
    expect(studente.getEta(), 20);
  });
}
