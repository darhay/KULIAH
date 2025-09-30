class Mobil{
  String? merk;
  String? warna;
  String? harga;
  int? tahun;

  Mobil(this.merk, this.warna, this.harga, this.tahun);
}

void main(List<String> args) {
  Mobil mobil1 = Mobil("Supra", "Hitam", "Rp 1.000.000.000", 2018);
  print(mobil1.merk);
  print(mobil1.warna);
  print(mobil1.harga);
  print(mobil1.tahun);
}