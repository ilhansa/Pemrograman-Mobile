import 'dart:io';
void main(List<String> arguments) {
  print("Masukkan nama : ");
  String? name = stdin.readLineSync();
  switch (name) {
    case null:
    case "":
      print("Nama tidak diketahui");
      break;
    default:
      print("Nama Anda adalah $name");
  }
}