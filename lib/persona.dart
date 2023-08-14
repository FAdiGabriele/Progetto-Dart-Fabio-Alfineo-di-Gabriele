// ignore: slash_for_doc_comments
/** 
 
 Richiesta 8
 
 Scrivi una classe astratta di tipo Persona che abbia come parametri nome, cognome, codice ed età. 

 Scrivi una classe Docente che estende la classe Persona e rappresenti le seguenti informazioni relative a un docente: nome, cognome, codice ed età (da classe astratta), e contenga i metodi getCodice, getCognome, GetNome e getEta che restituiscono rispettivamente il codice, il cognome, il nome e l’età del docente. 

 Scrivi una classe Studenti che rappresenti le seguenti informazioni relative a uno studente e i get come sopra (che estende anch’essa la classe astratta): nome, cognome, età e codice.

 Scrivi poi una classe Università, che rappresenti un insieme di docenti universitari tramite un array di tipo Docente e un insieme di studenti (array di studenti).

 Inserisci nell’Univeristà i seguenti metodi: 

 - cercaDocentiByCodice
 - cercaDocentiByCognome
 - cercaStudentiByCodice
 - cercaStudenteByCognome
 - mediaEtàStudenti
 - mediaEtàDocenti

*/

abstract class Persona {
  final String nome;
  final String cognome;
  final String codice;
  final int eta;

  Persona(this.nome, this.cognome, this.codice, this.eta);
}

class Docente extends Persona {
  Docente(super.nome, super.cognome, super.codice, super.eta);

  String getCodice() {
    return codice;
  }

  String getCognome() {
    return cognome;
  }

  String getNome() {
    return nome;
  }

  int getEta() {
    return eta;
  }
}

class Studente extends Persona {
  Studente(super.nome, super.cognome, super.codice, super.eta);

  String getCodice() {
    return codice;
  }

  String getCognome() {
    return cognome;
  }

  String getNome() {
    return nome;
  }

  int getEta() {
    return eta;
  }
}

class Universita {
  List<Docente> docenti;
  List<Studente> studenti;

  Universita(this.docenti, this.studenti);

  /// Considerando che il codice dovrebbe essere univoco e quindi questo metodo dovrebbe restituire un unico Docente
  ///
  /// Ma visto come è definito il nome (al plurale) ho deciso che torna una lista di docenti che avrà più di un elemento nel malaugurato caso ci sia più di un docente con lo stesso codice
  List<Docente> cercaDocentiByCodice(String codice) {
    if (codice.isEmpty) return [];

    List<Docente> newList = [];

    for (var docente in docenti) {
      if (codice == docente.codice) {
        newList.add(docente);
      }
    }

    return newList;
  }

  List<Docente> cercaDocentiByCognome(String cognome) {
    if (cognome.isEmpty) return [];

    List<Docente> newList = [];

    for (var docente in docenti) {
      if (cognome == docente.cognome) {
        newList.add(docente);
      }
    }

    return newList;
  }

  /// Considerando che il codice dovrebbe essere univoco e quindi questo metodo dovrebbe restituire un unico Studente
  ///
  /// Ma visto come è definito il nome (al plurale) ho deciso che torna una lista di studenti che avrà più di un elemento nel malaugurato caso ci sia più di un studente con lo stesso codice
  List<Studente> cercaStudentiByCodice(String codice) {
    if (codice.isEmpty) return [];

    List<Studente> newList = [];

    for (var studente in studenti) {
      if (codice == studente.codice) {
        newList.add(studente);
      }
    }

    return newList;
  }

  List<Studente> cercaStudenteByCognome(String cognome) {
    if (cognome.isEmpty) return [];

    List<Studente> newList = [];

    for (var studente in studenti) {
      if (cognome == studente.cognome) {
        newList.add(studente);
      }
    }

    return newList;
  }

  double mediaEtaStudenti() {
    int totalAge = 0;

    for (var studente in studenti) {
      totalAge += studente.eta;
    }

    return totalAge / studenti.length;
  }

  double mediaEtaDocenti() {
    int totalAge = 0;

    for (var docente in docenti) {
      totalAge += docente.eta;
    }

    return totalAge / docenti.length;
  }
}
