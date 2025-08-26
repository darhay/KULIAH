import 'dart:io';

void main(List<String> args) {
  double panjang;
  double lebar;
  stdout.write("Masukkan panjang : ");
  panjang = double.parse(stdin.readLineSync()!);
  stdout.write("Masukkan lebar : ");
  lebar = double.parse(stdin.readLineSync()!);
  var luas = panjang * lebar;
  var keliling = 2 * (panjang + lebar);
  print("---Hasil---");
  print(
    "Panjang = ${panjang.toInt()}\nLebar = ${lebar.toInt()}\nLuas = ${luas.toInt()}\nKeliling = ${keliling.toInt()}",
  );
}
