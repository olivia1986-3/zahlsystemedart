void main() {
  print(hexadezimalToDezimal('7d0'));
}
/*
_Funktion Bau:
1. Ausgabe Typ definieren
2. Funktionsname definieren
3. Eingabefeld : Eingabe Type, Eingabe Name 
4. Funktionbody
*/

int? binaerToDezimal(String binaerzahl) {
  // Fehlermeldung, wenn Eingabe keine Zahl ist
  if (int.tryParse(binaerzahl) == null) {
    print('Einagbe ist keine Zahl');
    return null;
  }
  // Fehlermeldung bei Binärzahl
  if (binaerzahl[0] == '+' || binaerzahl == '-') {
    print('Eingabe ist keine Binärzahl');
    return null;
  }

  int result = 0;
  int base = 1;
  for (int i = binaerzahl.length - 1; i >= 0; i--) {
    // Fehlermeldung, wenn Eingabe keine Binärzahl ist
    if (int.parse(binaerzahl[i]) > 1) {
      print('Eingabe ist keine Binärzahl');
      return null;
    }
    result = result + int.parse(binaerzahl[i]) * base;
    base = base * 2;
  }
  print(result);
  return result;
}

String? dezimalToBinaer(int dezimalzahl) {
  if (dezimalzahl < 0) {
    print('Eingabe ist keine positiv Dezimalzahl');
    return null;
  }
  if (dezimalzahl == 0) {
    return '0';
  }
  String result = '';
  while (dezimalzahl > 0) {
    result = '${dezimalzahl % 2}' + result;
    dezimalzahl = dezimalzahl ~/ 2;
  }
  return result;
}

String? dezimalToHexadezimal(int dezimalzahl) {
  if (dezimalzahl < 0) {
    print('Eingabe ist keine positiv Dezimalzahl');
    return null;
  }
  if (dezimalzahl < 16) {
    return dezToHexMap[dezimalzahl];
  }
  String result = '';
  while (dezimalzahl > 0) {
    int rest = dezimalzahl % 16;

    result = dezToHexMap[rest]! + result;
    dezimalzahl = dezimalzahl ~/ 16;
  }

  return result;
}

const Map<int, String> dezToHexMap = {
  0: '0',
  1: '1',
  2: '2',
  3: '3',
  4: '4',
  5: '5',
  6: '6',
  7: '7',
  8: '8',
  9: '9',
  10: 'A',
  11: 'B',
  12: 'C',
  13: 'D',
  14: 'E',
  15: 'F'
};
const Map<String, int> hexToDezMap = {
  '0': 0,
  '1': 1,
  '2': 2,
  '3': 3,
  '4': 4,
  '5': 5,
  '6': 6,
  '7': 7,
  '8': 8,
  '9': 9,
  'A': 10,
  'a': 10,
  'B': 11,
  'b': 11,
  'C': 12,
  'c': 12,
  'D': 13,
  'd': 13,
  'E': 14,
  'e': 14,
  'F': 15,
  'f': 15,
};

int? hexadezimalToDezimal(String hexadezimal) {
  int result = 0;
  int base = 1;
  for (int i = hexadezimal.length - 1; i >= 0; i--) {
    if (!hexToDezMap.keys.contains(hexadezimal[i])) {
      print('Eingabe ist keine hexadezimal');
      return null;
    }

      result = result +hexToDezMap[hexadezimal[i]]!  * base;
      base = base * 16;
  }
  return result;
}
