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
    Professor professor =
        Professor("nome_docente", "cognome_docente", "codice_docente", 38);

    expect(professor.getName(), "nome_docente");
    expect(professor.getSurname(), "cognome_docente");
    expect(professor.getId(), "codice_docente");
    expect(professor.getAge(), 38);
  });

  test("create studente works", () {
    Student student =
        Student("nome_studente", "cognome_studente", "codice_studente", 20);

    expect(student.getName(), "nome_studente");
    expect(student.getSurname(), "cognome_studente");
    expect(student.getId(), "codice_studente");
    expect(student.getAge(), 20);
  });

  Professor professor1 = Professor("Osvaldo", "Palerma", "NG26021006", 35);
  Professor professor2 = Professor("Ermenegilda", "Rossi", "NM78873113", 60);
  Professor professor3 = Professor("Eliano", "Rossi", "NG26021006", 53);
  Professor professor4 = Professor("Lilla", "Rizzo", "QP41455718", 47);
  Professor professor5 = Professor("Emilia", "Micheli", "KT96703593", 62);
  Professor professor6 = Professor("Liberato", "Mancini", "BY55323363", 32);
  Professor professor7 = Professor("Geremia", "Romani", "NG26021006", 56);
  Professor professor8 = Professor("Ettore", "Viola", "HB62005568", 54);
  Professor professor9 = Professor("Rosina ", "Milani", "OM50810914", 46);

  Student student1 = Student("Fabio Alfineo", "di Gabriele", "TU22619797", 24);
  Student student2 = Student("Romilda ", "Rossi", "WY15952860", 25);
  Student student3 = Student("Roberto", "Rossi", "PJ23135082", 23);
  Student student4 = Student("Emilio", "Binchi", "UD98594171", 34);
  Student student5 = Student("Gennaro", "Schiavone", "OL57039509", 27);
  Student student6 = Student("Marco", "Zito", "FS34282773", 33);
  Student student7 = Student("Benedetto", "Rossi", "PJ23135082", 19);
  Student student8 = Student("Maria", "Arcuri", "JG90614371", 29);

  List<Professor> professors = [
    professor1,
    professor2,
    professor3,
    professor4,
    professor5,
    professor6,
    professor7,
    professor8,
    professor9,
  ];

  List<Student> students = [
    student1,
    student2,
    student3,
    student4,
    student5,
    student6,
    student7,
    student8,
  ];

  University university = University(professors, students);

  test("searchProfessorsById when id is empty", () {
    expect(university.searchProfessorsById(""), []);
  });

  test("searchProfessorsById when id is unique", () {
    expect(university.searchProfessorsById("HB62005568"), [professor8]);
  });

  test("searchProfessorsById when id is duplicated", () {
    expect(university.searchProfessorsById("NG26021006"),
        [professor1, professor3, professor7]);
  });

  test("searchProfessorsBySurname when surname is empty", () {
    expect(university.searchProfessorsBySurname(""), []);
  });

  test("searchProfessorsBySurname when surname is unique", () {
    expect(university.searchProfessorsBySurname("Mancini"), [professor6]);
  });

  test("searchProfessorsBySurname when surname is duplicated", () {
    expect(university.searchProfessorsBySurname("Rossi"),
        [professor2, professor3]);
  });

  test("searchStudentsById when id is empty", () {
    expect(university.searchStudentsById(""), []);
  });

  test("searchStudentsById when id is unique", () {
    expect(university.searchStudentsById("TU22619797"), [student1]);
  });

  test("searchStudentsById when id is duplicated", () {
    expect(university.searchStudentsById("PJ23135082"), [student3, student7]);
  });

  test("searchStudentsBySurname when surname is empty", () {
    expect(university.searchStudentsBySurname(""), []);
  });

  test("searchStudentsBySurname when surname is unique", () {
    expect(university.searchStudentsBySurname("Arcuri"), [student8]);
  });

  test("searchStudentsBySurname when surname is duplicated", () {
    expect(university.searchStudentsBySurname("Rossi"),
        [student2, student3, student7]);
  });
}
