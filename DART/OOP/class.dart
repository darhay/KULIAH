class Mobil {
  String? merk;
  String? warna;
  String? harga;
  int? tahun;


  void info(merk, warna, harga, tahun) {
    print("Merk : $merk");
    print("Warna : $warna");
    print("Harga : $harga");
    print("Tahun : $tahun");
  }
}

void main(List<String> args) {
  Mobil mobil1 = Mobil();

  mobil1.info("Supra", "Hitam", "Rp 1.000.000.000", 2018);
}
