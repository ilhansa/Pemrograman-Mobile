import 'dart:io';
void main(List<String> arguments) {
  print("Masukkan nama : ");
  String? name = stdin.readLineSync();
  // print("Nama saya adalah ${name ?? "Tidak diketahui"}");
  // print("Nama Anda adalah : ${name == null || name.isEmpty ? "Tidak diketahui" : name}");
  if(name != null && name.isNotEmpty) {
    print("Nama Anda adalah : $name");
  } else {
    print("Nama Anda tidak diketahui");
  }
}