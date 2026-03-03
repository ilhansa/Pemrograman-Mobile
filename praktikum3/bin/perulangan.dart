import 'dart:io';
void main(List<String> arguments) {
  // int i = 0;
  // while (i < 5) {
  //   print("Perulangan ke ${i + 1}");
  //   i++;
  // }

  // do {
  //   print("Perulangan ke ${i + 1}");
  //   i++;
  // } while (i == 5);
  // int i = 0;
  // for (;;) {
  //   if (i == 5) {
  //     break;
  //   }
  //   print("perulangan ke ${i + 1}");
  //   i++;
  // }

  for (int j = 0; j < 10; j++) {
    if (j%2 == 0) {
      continue;
    }
    print(j);
  }
}