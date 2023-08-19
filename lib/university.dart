//#region Richiesta 8
 
/// Scrivi una classe astratta di tipo Persona che abbia come parametri nome, cognome, codice ed età. 
///
/// Scrivi una classe Docente che estende la classe Persona e rappresenti le seguenti informazioni relative a un docente: nome, cognome, codice ed età (da classe astratta), e contenga i metodi getCodice, getCognome, GetNome e getEta che restituiscono rispettivamente il codice, il cognome, il nome e l’età del docente. 
///
/// Scrivi una classe Studenti che rappresenti le seguenti informazioni relative a uno studente e i get come sopra (che estende anch’essa la classe astratta): nome, cognome, età e codice.
///
/// Scrivi poi una classe Università, che rappresenti un insieme di docenti universitari tramite un array di tipo Docente e un insieme di studenti (array di studenti).
///
/// Inserisci nell’Univeristà i seguenti metodi: 
///
/// - cercaDocentiByCodice
/// - cercaDocentiByCognome
/// - cercaStudentiByCodice
/// - cercaStudenteByCognome
/// - mediaEtàStudenti
/// - mediaEtàDocenti

abstract class Person {
  final String name;
  final String surname;
  final String id;
  final int age;

  Person(this.name, this.surname, this.id, this.age);
}

class Professor extends Person {
  Professor(super.name, super.surname, super.id, super.age);

  String getId() {
    return id;
  }

  String getSurname() {
    return surname;
  }

  String getName() {
    return name;
  }

  int getAge() {
    return age;
  }
}

class Student extends Person {
  Student(super.name, super.surname, super.id, super.age);

  String getId() {
    return id;
  }

  String getSurname() {
    return surname;
  }

  String getName() {
    return name;
  }

  int getAge() {
    return age;
  }
}

class University {
  List<Professor> professors;
  List<Student> students;

  University(this.professors, this.students);

  /// Considerando che il codice dovrebbe essere univoco e quindi questo metodo dovrebbe restituire un unico Docente
  ///
  /// Ma visto come è definito il nome (al plurale) ho deciso che torna una lista di docenti che avrà più di un elemento nel malaugurato caso ci sia più di un docente con lo stesso codice
  List<Professor> searchProfessorsById(String id) {
    if (id.isEmpty) return [];

    List<Professor> newList = [];

    for (var professor in professors) {
      if (id == professor.id) {
        newList.add(professor);
      }
    }

    return newList;
  }

  List<Professor> searchProfessorsBySurname(String surname) {
    if (surname.isEmpty) return [];

    List<Professor> newList = [];

    for (var professor in professors) {
      if (surname == professor.surname) {
        newList.add(professor);
      }
    }

    return newList;
  }

  /// Considerando che il codice dovrebbe essere univoco e quindi questo metodo dovrebbe restituire un unico Studente
  ///
  /// Ma visto come è definito il nome (al plurale) ho deciso che torna una lista di studenti che avrà più di un elemento nel malaugurato caso ci sia più di un studente con lo stesso codice
  List<Student> searchStudentsById(String id) {
    if (id.isEmpty) return [];

    List<Student> newList = [];

    for (var student in students) {
      if (id == student.id) {
        newList.add(student);
      }
    }

    return newList;
  }

  List<Student> searchStudentsBySurname(String surname) {
    if (surname.isEmpty) return [];

    List<Student> newList = [];

    for (var student in students) {
      if (surname == student.surname) {
        newList.add(student);
      }
    }

    return newList;
  }

  double getStudentAgeAverage() {
    int totalAge = 0;

    for (var student in students) {
      totalAge += student.age;
    }

    return totalAge / students.length;
  }

  double getProfessorAgeAverage() {
    int totalAge = 0;

    for (var professor in professors) {
      totalAge += professor.age;
    }

    return totalAge / professors.length;
  }
}
//#endregion
