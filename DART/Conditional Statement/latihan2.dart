import 'dart:io';

void main(List<String> args) {
  stdout.write("Masukkan umur: ");
  String? input = stdin.readLineSync();

  if (input != null && input.isNotEmpty) {
    int umur = int.parse(input);

    if (umur >= 0 && umur < 13) {
      print("Output: Anda termasuk kategori Anak-anak");
    } else if (umur >= 13 && umur < 18) {
      print("Output: Anda termasuk kategori Remaja");
    } else if (umur >= 18 && umur < 60) {
      print("Output: Anda termasuk kategori Dewasa");
    } else if (umur >= 60) {
      print("Output: Anda termasuk kategori Lansia");
    } else {
      print("Umur tidak valid!");
    }
  } 
    
  else {
    print("Input tidak boleh kosong.");
  }
}