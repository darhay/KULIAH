import 'dart:io';

// Class Dosen
class Dosen {
  String nama;
  String npw;
  String jurusan;

  Dosen({required this.nama, required this.npw, required this.jurusan});
}

// Class Mahasiswa
class Mahasiswa {
  String nama;
  String nim;
  String jurusan;
  Dosen dosenPendamping;

  Mahasiswa({
    required this.nama,
    required this.nim,
    required this.jurusan,
    required this.dosenPendamping,
  });
}

// Fungsi untuk entry data dosen
List<Dosen> daftarDosen() {
  return [
    Dosen(nama: "Dr. Haydar", npw: "D001", jurusan: "Informatika"),
    Dosen(nama: "Dr. Lukman", npw: "D002", jurusan: "Informatika"),
    Dosen(nama: "Dr. Destitha", npw: "D003", jurusan: "Informatika"),
    Dosen(nama: "Dr. Lisa", npw: "D004", jurusan: "Informatika"),
    Dosen(nama: "Dr. Yunan", npw: "D005", jurusan: "Informatika"),
  ];
}

// Fungsi untuk entry data mahasiswa
List<Mahasiswa> entryMahasiswa(List<Dosen> dosenList) {
  List<Mahasiswa> daftarMahasiswa = [];
  int count = 0;

  while (count < 5) {
    print("\nInput Data Mahasiswa ke-${count + 1}");

    stdout.write("Masukkan Nama: ");
    String? nama = stdin.readLineSync();

    stdout.write("Masukkan NIM: ");
    String? nim = stdin.readLineSync();

    stdout.write("Masukkan Jurusan: ");
    String? jurusan = stdin.readLineSync();

    // Validasi input agar tidak boleh kosong
    if (nama == null ||
        nama.isEmpty ||
        nim == null ||
        nim.isEmpty ||
        jurusan == null ||
        jurusan.isEmpty) {
      print(
        "\nInput tidak boleh kosong! Silakan ulangi data mahasiswa ke-${count + 1}.",
      );
      continue;
    }

    // Validasi NIM tidak boleh sama
    bool nimSudahAda = daftarMahasiswa.any((mhs) => mhs.nim == nim);
    if (nimSudahAda) {
      print(
        "\nNIM sudah digunakan! Harus unik. Ulangi data mahasiswa ke-${count + 1}.",
      );
      continue;
    }

    // Pilih dosen pendamping
    print("\nPilih Dosen Pendamping:");
    for (int i = 0; i < dosenList.length; i++) {
      print("${i + 1}. ${dosenList[i].nama} (${dosenList[i].jurusan})");
    }
    int? pilihanDosen;
    while (true) {
      stdout.write("Masukkan nomor dosen (1-5): ");
      String? inputDosen = stdin.readLineSync();
      if (inputDosen != null && int.tryParse(inputDosen) != null) {
        pilihanDosen = int.parse(inputDosen);
        if (pilihanDosen >= 1 && pilihanDosen <= dosenList.length) {
          break;
        }
      }
      print("Pilihan tidak valid. Ulangi.");
    }

    Dosen dosenPendamping = dosenList[pilihanDosen - 1];

    // Simpan ke dalam objek Mahasiswa
    Mahasiswa mahasiswa = Mahasiswa(
      nama: nama,
      nim: nim,
      jurusan: jurusan,
      dosenPendamping: dosenPendamping,
    );

    daftarMahasiswa.add(mahasiswa);
    count++;
  }

  return daftarMahasiswa;
}

// Fungsi untuk mencari mahasiswa berdasarkan NIM atau nama
void cariMahasiswa(List<Mahasiswa> dataMahasiswa, String keyword) {
  bool ditemukan = false;

  for (var mhs in dataMahasiswa) {
    if (mhs.nama.toLowerCase() == keyword.toLowerCase() || mhs.nim == keyword) {
      print("\n=== Data Ditemukan ===");
      print("Nama   : ${mhs.nama}");
      print("NIM    : ${mhs.nim}");
      print("Jurusan: ${mhs.jurusan}");
      print("Dosen Pendamping: ${mhs.dosenPendamping.nama}");
      ditemukan = true;
      break;
    }
  }

  if (!ditemukan) {
    print("\nData tidak ditemukan.");
  }
}

void main() {
  print("=== Entry Data Mahasiswa ===");
  List<Dosen> dosenList = daftarDosen();
  List<Mahasiswa> mahasiswaList = entryMahasiswa(dosenList);

  print("\n=== Pencarian Data Mahasiswa ===");
  while (true) {
    stdout.write(
      "\nMasukkan Nama atau NIM untuk mencari (ketik 'done' untuk keluar): ",
    );
    String? keyword = stdin.readLineSync();

    if (keyword == null || keyword.toLowerCase() == "done") {
      print("\nProgram selesai. Terima kasih!");
      break;
    }

    cariMahasiswa(mahasiswaList, keyword);
  }
}
