void main(){
    // 1.
  List<String> animals = ["Tiger", "Lion", "Cat"];
  print(animals[1]);

  // 2.
  animals.add("Dog");
  print(animals);

  // 3.
  print("จำนวนสมาชิก: ${animals.length}");

  // 4.
  Map<String, int> studentScore = {"math": 90, "english": 85};
  print(studentScore["math"])

  // 5.
  Set<int> uniqueNumbers = {10, 20, 10, 30, 20};
  print(uniqueNumbers); 

  // 6.
  List<String> colors = ["Red", "Green", "Blue"];
  colors.removeAt(1);
  print(colors); 

  // 7.
  List<int> numbers = [5, 10, 15, 10];
  print(numbers.indexOf(10)); 

  // 8.
  List<String> names = <String>[];
  names.add("John");
  // names.add(123); // ❌ Error: ไม่สามารถเพิ่ม int ลงใน List<String>

  // 9.
  for (var animal in animals) {
    print("Animal: $animal");
  }

  // 10.
  print(studentScore.containsKey("science")); 

  // 11.
  List<int> listA = [1, 2];
  List<int> listB = [3, 4];
  List<int> combined = [0, ...listA, ...listB, 5];
  print(combined); 

  // 12.
  bool isPremiumUser = false;
  List<String> features = [
    "Basic Feature",
    if (isPremiumUser) "Premium Feature"
  ];
  print(features); 

  // 13.
  List<int> original = [1, 2, 3];
  List<int> squares = [for (var n in original) n * n];
  print(squares); 

  // 14.
  studentScore.forEach((key, value) {
    print("Subject: $key, Score: $value");
  });

  // 15.
  print("Set มีสมาชิกเพียง 3 ตัวเพราะ Set ไม่เก็บข้อมูลซ้ำ");

}