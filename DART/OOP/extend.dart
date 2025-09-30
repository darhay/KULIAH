
class Dosen {
  String? nama;
  String? nidn;
  String? prodi;
}

class Mahasiswa extends Dosen {
  String? npm;

  Mahasiswa(String nama, String npm, String prodi) {
    this.nama = nama;
    this.npm = npm;
    this.prodi = prodi;
  }

}


void main(List<String> args) {
  Mahasiswa mahasiswa1 = Mahasiswa(
    "Haydar Qisyaam Sangadji",
    "07352211025",
    "Informatika",
  );
  print(mahasiswa1.nama);
  print(mahasiswa1.npm);
  print(mahasiswa1.prodi);
}
