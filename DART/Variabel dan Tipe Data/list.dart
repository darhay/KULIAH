void main(List<String> args) {
  List<String> buah = ['apel', 'jeruk', 'mangga', 'pisang'];

  print(buah);
  print(buah[0]);
  print(buah[3]);
  print(buah.length);
  print(buah.first);
  buah.add('salak');
  buah.addAll(['nanas', 'jambu']);
  print(buah);
  print(buah.indexOf('salak'));
  print(buah.indexOf(buah[0]));
}
