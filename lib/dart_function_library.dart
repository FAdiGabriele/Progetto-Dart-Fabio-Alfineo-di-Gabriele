// ignore_for_file: slash_for_doc_comments
/** 
  Richiesta 1
 
  Completa la funzione.

  Stampa a video questa figura:

  ******
  
  *****

  ****

  ***

  **

  *

*/
printTriangle(int triangleSize) {
  if (triangleSize < 2) {
    print("Non riesco a realizzare un triangolo :(");
  }

  String result = "";
  final String atomicValue = "*";

  for (int lineSize = triangleSize; lineSize > 0; lineSize--) {
    String lineValue = "\n";

    for (int i = 0; i < lineSize; i++) {
      lineValue += atomicValue;
    }

    result += lineValue;

    if (lineValue != atomicValue) {
      result += "\n";
    }
  }

  print(result);
}

/** 
  Richiesta 2

  Data la stringa “ingegni”, verifica se è una parola palindroma, in tal caso stampa “La stringa è palindroma”, altrimenti “La stringa non è palindroma”.

   Per esempio, se la stringa ha il valore esempio “ingegni” → stampa “La stringa è palindroma”.

*/

printIsPalindrome(String word) {
  if (word.isEmpty) {
    print("La stringa è vuota");
  }

  if (isPalindrome(word)) {
    print("La stringa è palindroma");
  } else {
    print("La stringa non è palindroma");
  }
}

bool isPalindrome(String word) {
  String lowercaseWord = word.toLowerCase();

  for (int i = 0; i < lowercaseWord.length / 2; i++) {
    if (lowercaseWord[i] != word[lowercaseWord.length - 1 - i]) {
      return false;
    }
  }
  return true;
}

/** 
  Richiesta 3

  Completa la funzione in modo tale che stampi l’area del rettangolo avendo come parametri l’altezza e la base. 

*/

printRectagleArea(int base, int height) {
  print(getRectangleArea(base, height));
}

int getRectangleArea(int base, int height){
  return base * height;
}

/** 
  Richiesta 4

  Completa la funzione in modo tale che stampi la somma di due numeri interi, se i due valori sono uguali fai la stampa del triplo della loro somma.

   Per esempio:

    Inseriti 2, 3 → stampa 5
    Inseriti 2, 2 → stampa 12 (perchè (2+2) * 3 = 12)

*/

printSumOrTripleSumOfEquals(int firstValue, int secondValue) {
  print(getSumOrTripleSumOfEquals(firstValue, secondValue));
}

int getSumOrTripleSumOfEquals(int firstValue, int secondValue){
  int result = firstValue + secondValue;
  if (firstValue == secondValue) {
    result *= 3;
  }
  return result;
}

//#region Richiesta 5
/** 
  Scrivi la funzione che calcoli il risultato dell’esame di uno studente. 

  Il voto ottenuto nella prova scritta può variare da +8 a -8.

  Il voto ottenuto nella prova pratica può variare da 0 a 24.

  Il risultato finale è la somma dei dati di pratica e di teoria.

  Se lo studente prende come voto 18 è promosso, se prende meno è bocciato.

  Se il voto complessivo tra teoria e pratica fa 31 o 32, il risultato sarà 30 e lode.

*/

String getExamGrade(int praticExamGrade, int writtenExamGrade) {
  if (isPraticExamGradeNotValid(praticExamGrade)) {
    return "Prova Pratica non valida";
  }

  if (isWrittenExamGradeNotValid(writtenExamGrade)) {
    return "Prova Scritta non valida";
  }

  int finalGrade = praticExamGrade + writtenExamGrade;

  return getFinalResult(finalGrade);
}

bool isPraticExamGradeNotValid(int praticExamGrade) {
  return praticExamGrade < 0 || praticExamGrade > 24;
}

bool isWrittenExamGradeNotValid(int writtenExamGrade) {
  return writtenExamGrade < -8 || writtenExamGrade > 8;
}

String getFinalResult(int finalGrade){
  var result =  switch (finalGrade) {
    < 18 => "Bocciato",
    31 || 32 => "30 e lode",
    _ => finalGrade.toString()
  };

  return result;
}
//#endregion

//#region Richiesta 7
/**
  Dato un array di interi calcola la media dei numeri all’interno dell’array. 

*/
double getAverage(List<int> numberList){
  int sum = 0;

  for (var element in numberList) { 
      sum += element;
  }

  double result = sum/numberList.length;

  return result;
}
//#endregion

