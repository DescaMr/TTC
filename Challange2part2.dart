// Function menghitung BMI
double calculateBMI(double weight, double height) {
  return weight / (height * height);
}

void main() {
  List<List<double>> dataMark = [
    [78, 1.69], // Data Mark 1
    [95, 1.88] // Data Mark 2
  ];

  List<List<double>> dataJohn = [
    [92, 1.95], // Data John 2
    [85, 1.76] // Data John 2
  ];

// for data Mark & john
  for (int i = 0; i < dataMark.length; i++) {
    List<double> mark = dataMark[i];
    double markWeight = mark[0]; // Berat Mark
    double markHeight = mark[1]; // Tinggi Mark

    List<double> john = dataJohn[i];
    double johnWeight = john[0]; // Berat John
    double johnHeight = john[1]; // Tinggi John

    // Menghitung BMI untuk Mark dan John
    double markBMI = calculateBMI(markWeight, markHeight);
    double johnBMI = calculateBMI(johnWeight, johnHeight);

    // Menampilkan hasil untuk Mark dan John
    print('Data Uji ${i + 1}:');
    print('BMI Mark: ${markBMI.toStringAsFixed(2)}');
    print('BMI John: ${johnBMI.toStringAsFixed(2)}');

    // Mengecek apakah BMI Mark lebih tinggi dari BMI John
    bool markHigherBMI = markBMI > johnBMI;
    print("BMI Mark lebih tinggi dari BMI John? = $markHigherBMI\n");
  }
}
