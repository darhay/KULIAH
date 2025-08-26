void main(List<String> args) {
  double panjang = 10;
  double lebar = 5;
  var luas = panjang * lebar;
  var keliling = 2 * (panjang + lebar);
  print(
    "Panjang = ${panjang.toInt()}\nLebar = ${lebar.toInt()}\nLuas = ${luas.toInt()}\nKeliling = ${keliling.toInt()}",
  );
}
