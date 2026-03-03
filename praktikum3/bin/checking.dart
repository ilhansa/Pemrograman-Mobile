import 'dart:io';
void main(List<String> arguments) {
  int a = 69;
  int b = 96;
  print(a == b);
  print(identical(a, b));

  String nama1 = "ilhan";
  String nama2 = "salih";
  print(nama1 == nama2);
  print(identical(nama1, nama2));
}