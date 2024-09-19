/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

export 'src/zahlsystemedart_base.dart';

void main() {
  /*
  1. Name der funktion
  2. eingabe definieren
  3. 
  */

  // print(x);
  int? x = listZahl([2,4,5,67,7,4]);
  print(x);
}

/*
_Funktion Bau:
1. Ausgabe Typ definieren
2. Funktionsname definieren
3. Eingabefeld : Eingabe Type, Eingabe Name 
4. Funktionbody
*/
int doppelung(int zahl) {
  return zahl * 2;
}

int addieren(int zahl1, int zahl2, int zahl3) {
  return zahl1 + zahl2 + zahl3;
}

int? listZahl(List<int> intList) {
  if (intList.isEmpty) {
    return null;
  }
  int result = 0;
  for (int element in intList) {
    result = result + element;
  }
  return result;
}
