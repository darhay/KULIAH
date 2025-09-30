class BiodataMahasiswa {
  String? nama;
  String? npm;
  String? prodi;
  int? usia;
  String? alamat;
  String? statusHubungan;

  void infoBiodataMahasiswa(nama, npm, prodi, usia, alamat, statusHubungan) {
    print("Nama : $nama\nNPM : $npm\nProdi : $prodi\nUsia : $usia\nAlamat : $alamat\nStatus Hubungan : $statusHubungan    ");
  }
}

void main(List<String> args) {
  BiodataMahasiswa mahasiswa1 = BiodataMahasiswa();
  mahasiswa1.infoBiodataMahasiswa(
    "Haydar Qisyaam Sangadji",
    "07352211025",
    "Informatika",
    21,
    "Tanah Tinggi Barat",
    "Belum Menikah",
  );
}
