import 'package:praktikum3/praktikum3.dart' as praktikum3;
void main(List<String> arguments) {
  int a = 10;
  double b = 3.14;
  String c = "Hallo guys";
  bool d = true;
  print(a);
  print(b);
  print(c);
  print(d);
  String e = "69";
  int f = a + int.parse(e);
  print(f);
  List<String> names = ["ilhan", "salih", "ilmansyah"];
  List<int> numbers = [0, 9, 8, 7, 6, 5, 4, 3, 2, 1];
  print('nama yang pertama adalah: ${names[0]}');
  print(numbers.length);
  Map<String, int> umur = {
    "ilhan" : 17,
    "salih" : 18,
    "ilmansyah" : 19
  };
  print(umur);
  print('umur ilhan adalah ${umur['ilhan']}');
  dynamic g = "wonhee";
  g = 18;
  print(g);
  g = true;
  print(g);
  g = [1, 2, 3];
  print(g);
  g = {'name': 'ilsa', 'age' : 16};
  print(g);
  var h = "ilsa ganteng";
  print(h);
}