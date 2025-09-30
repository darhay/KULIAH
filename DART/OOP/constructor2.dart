class Mahasiswa {
  String? nama;
  String? npm;
  String? prodi;

  Mahasiswa(this.nama, this.npm, this.prodi);

}

void main(List<String> args) {
  Mahasiswa mahasiswa1 = Mahasiswa("Haydar Qisyaam Sangadji", "07352211025", "Informatika");
  print(mahasiswa1.nama);
  print(mahasiswa1.npm);
  print(mahasiswa1.prodi);
}