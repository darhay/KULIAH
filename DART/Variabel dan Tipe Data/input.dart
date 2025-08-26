import 'dart:io';

void main(List<String> args) {
  String? nama;
  int? usia;
  stdout.write("masukkan nama : ");
  nama = stdin.readLineSync();
  stdout.write("masukkan usia : ");
  usia = int.parse(stdin.readLineSync()!);
  print(nama);
  print(nama.runtimeType);
}
