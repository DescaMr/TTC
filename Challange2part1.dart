//function mencari nilai rata rata pada setiap list
double hitungrata(List<List<int>> scoreLists, int index) {
  double total = 0;
  for (List<int> scoreList in scoreLists) {
    total += scoreList[index];
  }
  return total / scoreLists.length;
}

//function mencari Pemenang (if-else)
String carimenang(double nilaiLumba, double nilaiKoala, int minScore) {
  if (nilaiLumba >= minScore || nilaiKoala >= minScore) {
    if (nilaiLumba > nilaiKoala) {
      return "Tim Lumba-Lumba memenangkan trofi!\n";
    } else if (nilaiKoala > nilaiLumba) {
      return "Tim Koala memenangkan trofi!\n";
    } else {
      return "Hasil Seri!\n";
    }
  } else {
    return "Tidak ada yang memenangkan trofi!\n";
  }
}

void main() {
  //data List
  List<List<int>> scoresLumba = [
    [96, 108, 89],
    [97, 112, 101],
    [97, 112, 101]
  ];
  List<List<int>> scoresKoala = [
    [88, 91, 110],
    [109, 95, 123],
    [109, 95, 106]
  ];

  //minimal score
  int minScore = 100;

  double nilaiLumba1 = hitungrata(scoresLumba, 0);
  double nilaiLumba2 = hitungrata(scoresLumba, 1);
  double nilaiLumba3 = hitungrata(scoresLumba, 2);
  double nilaiKoala1 = hitungrata(scoresKoala, 0);
  double nilaiKoala2 = hitungrata(scoresKoala, 1);
  double nilaiKoala3 = hitungrata(scoresKoala, 2);

  //output hasil pertandingan ke 1
  print(
      "skor Lumba-Lumba Pertandingan ke 1 : ${nilaiLumba1.toStringAsFixed(2)}");
  print("skor Koala Pertandingan ke 1 : ${nilaiKoala1.toStringAsFixed(2)}");
  print(carimenang(nilaiLumba1, nilaiKoala1, minScore));

  //output hasil pertandingan ke 2
  print(
      "skor Lumba-Lumba Pertandingan ke 2 : ${nilaiLumba2.toStringAsFixed(2)}");
  print("skor Koala Pertandingan ke 2 : ${nilaiKoala2.toStringAsFixed(2)}");
  print(carimenang(nilaiLumba2, nilaiKoala2, minScore));

  //output hasil pertandingan ke 3
  print(
      "skor lumba lumba Pertandingan ke 3 : ${nilaiLumba3.toStringAsFixed(2)}");
  print("skor Koala Pertandingan ke 3 : ${nilaiKoala3.toStringAsFixed(2)}");
  print(carimenang(nilaiLumba3, nilaiKoala3, minScore));
}
