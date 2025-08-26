//set adalah kumpulan elemen yang unik dan tidak berurutan

void main() {
  Set<dynamic> angka = {1, 2, 3, 4, 5};
  print(angka.length);
  print(angka.add(20));
  print(angka.remove(1));
  print(angka.contains(1)); //ada data tersebut atau tidak
  angka.clear(); //bersihkan semua
  print(angka);
  print(angka.toList().runtimeType);
  print(angka.runtimeType);
}
