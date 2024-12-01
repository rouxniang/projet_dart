import 'dart:async'; 

void declarationVariables() {
  String nom = "Roux";
  int age = 25;
  double pi = 3.14;
  bool isFlutterAwesome = true;

  final String nomComplet = "Roux niang";
  const int vitesseLumiere = 299792458; 

  print("Nom: $nom, Âge: $age, Pi: $pi, Flutter Awesome: $isFlutterAwesome");
  print("Nom complet: $nomComplet");
  print("Vitesse de la lumière: $vitesseLumiere m/s");
}

void utilisationListes() {
  List<int> nombres = [1, 2, 3, 4, 5];
  nombres.add(6);
  print("Liste des nombres: $nombres");
}

void utilisationMaps() {
  Map<String, dynamic> etudiant = {
    'nom': 'Roux',
    'age': 25,
    'classe': '4ème Promo',
  };

  etudiant['note'] = 85;
  print("Map Etudiant: $etudiant");
}

void bonjour(String nom) {
  print("Bonjour, $nom!");
}

int addition(int a, int b) {
  return a + b;
}

void conditions() {
  int nombre = -5;

  if (nombre > 0) {
    print("Le nombre est positif");
  } else if (nombre < 0) {
    print("Le nombre est négatif");
  } else {
    print("Le nombre est zéro");
  }
}

void boucles() {
  for (int i = 1; i <= 10; i++) {
    print(i);
  }

  int i = 10;
  while (i >= 1) {
    print(i);
    i--;
  }
}

double division(double num1, double num2) {
  if (num2 == 0) {
    throw Exception("Division par zéro interdite!");
  }
  return num1 / num2;
}

class Personne {
  String nom;
  int _age;

  Personne(this.nom, this._age);

  int get age => _age;

  set age(int newAge) {
    if (newAge >= 0) {
      _age = newAge;
    }
  }
}

class Etudiant extends Personne {
  String classe;

  Etudiant(String nom, int age, this.classe) : super(nom, age);
}

int carre(int number) {
  return number * number;
}

Future<String> fetchData() {
  return Future.delayed(Duration(seconds: 2), () {
    return "Données reçues";
  });
}

void streamExample() {
  Stream.periodic(Duration(seconds: 1), (count) => count + 1).take(10).listen((value) {
    print(value);
  });
}

int factorielle(int n) {
  if (n == 0) return 1;
  return n * factorielle(n - 1);
}

List<int> filtrerPairs(List<int> nombres) {
  return nombres.where((n) => n % 2 == 0).toList();
}

void main() {

  declarationVariables();

  utilisationListes();

  utilisationMaps();

  bonjour("Roux");

  int resultat = addition(5, 7);
  print("La somme est: $resultat");

  conditions();

  boucles();

  try {
    double result = division(10, 0);
    print("Le résultat est: $result");
  } catch (e) {
    print(e);
  }

  var personne1 = Personne('Roux', 25);
  print('Nom: ${personne1.nom}, Âge: ${personne1.age}');
  personne1.age = 30;
  print('Nouvel âge: ${personne1.age}');

  var etudiant1 = Etudiant('Roux', 25, '4ème Promo');
  print('Nom: ${etudiant1.nom}, Âge: ${etudiant1.age}, Classe: ${etudiant1.classe}');

  print("Le carré de 5 est: ${carre(5)}");

  fetchData().then((data) {
    print(data);
  });

  streamExample();

  print("Factorielle de 5: ${factorielle(5)}");

  List<int> nombres = [1, 2, 3, 4, 5, 6];
  print("Nombres pairs: ${filtrerPairs(nombres)}");
}
