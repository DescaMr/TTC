import 'dart:io';

num konversiFahrenheitCelcius(num fahrenheit) {
  return (fahrenheit - 32) * 5 / 9;
}

num konversiReamurCelcius(num reamur) {
  return reamur * 5 / 4;
}

num konversiKelvinCelcius(num kelvin) {
  return kelvin - 273.15;
}

void main() {
  //fahrenheit
  stdout.write('Masukkan suhu dalam Fahrenheit: ');
  num fahrenheit = num.parse(stdin.readLineSync()!);

  //reamur
  stdout.write('Masukkan suhu dalam Reamur: ');
  num reamur = num.parse(stdin.readLineSync()!);

  //kelvin
  stdout.write('Masukkan suhu dalam Kelvin: ');
  num kelvin = num.parse(stdin.readLineSync()!);

  num celciusF = konversiFahrenheitCelcius(fahrenheit);
  num celciusR = konversiReamurCelcius(reamur);
  num celciusK = konversiKelvinCelcius(kelvin);

  celciusF = double.parse(celciusF.toStringAsFixed(2));
  celciusR = double.parse(celciusR.toStringAsFixed(2));
  celciusK = double.parse(celciusK.toStringAsFixed(2));

  print('$fahrenheit derajat fahrenheit');
  print('$reamur derajat reamur');
  print('$kelvin derajat kelvin');
  print('Hasil konversi Fahrenheit ke Celsius menjadi : $celciusF');
  print('Hasil konversi Reamur ke Celsius menjadi : $celciusR');
  print('Hasil konversi Kelvin ke Celsius menjadi : $celciusK');
}
