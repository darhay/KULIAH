void main() {
  int number = 20;
  double pecahan = 20;
  num angka = 20.5;
  dynamic angka2 = "30";

  print(number.toDouble());
  print(pecahan.hashCode);
  print(angka.toString().runtimeType);
  print(angka2.runtimeType);

  print("apakah nilai int = double ${number == pecahan}");
}
