import 'dart:io';

void main() {
  stdout.write("masukan nama anda : ");
  String name = stdin.readLineSync()!;

  stdout.write("masukan jurusan anda : ");
  String jur = stdin.readLineSync()!;

  print("Hallo $name, Jurusan Anda adalah $jur");
}
