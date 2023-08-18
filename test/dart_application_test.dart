import 'package:dart_project/dart_function_library.dart';
import 'package:test/test.dart';

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
    expect(getAverage([2, 4]), 3);
  });
}
