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


  //ฟังก์ชัน

  // 1. ฟังก์ชัน printMyName
void printMyName() {
  print("My nickname is ChatGPT");
}

void main() {
  // เรียกใช้ฟังก์ชัน printMyName
  printMyName();

  // 2. ฟังก์ชัน getCurrentYear
  int getCurrentYear() {
    return DateTime.now().year;
  }

  print("Current Year: ${getCurrentYear()}");

  // 3. ฟังก์ชัน multiply
  int multiply(int a, int b) {
    return a * b;
  }

  // 4. Arrow Function sayGoodbye
  void sayGoodbye() => print("Goodbye!");

  sayGoodbye();

  // 5. เรียกใช้ multiply
  int result = multiply(10, 5);
  print("Multiply result: $result");

  // 6. ฟังก์ชัน showUserDetails (แบบไม่ required)
  void showUserDetails({String? name, int? age}) {
    print("Name: $name, Age: $age");
  }

  // 7. เรียกใช้ showUserDetails (สลับลำดับกัน)
  showUserDetails(age: 30, name: "David");

  // 8. ฟังก์ชัน greet
  void greet({required String name, String greeting = "Hello"}) {
    print("$greeting, $name");
  }

  greet(name: "Alice");
  greet(name: "Bob", greeting: "Hi");

  // 9. showUserDetails แบบ required name
  void showUserDetails2({required String name, int? age}) {
    print("Name: $name, Age: $age");
  }

  showUserDetails2(name: "Charlie");

  // 10. ใช้ forEach กับ Anonymous Function
  List<int> numbers = [1, 2, 3];
  numbers.forEach((num) {
    print("Number: $num");
  });

  // 11. ฟังก์ชัน isEven แบบ Arrow Function
  bool isEven(int number) => number % 2 == 0;

  print("isEven(4): ${isEven(4)}");
  print("isEven(5): ${isEven(5)}");

  // 12. ฟังก์ชัน logMessage
  void logMessage(String message, [String level = "INFO"]) {
    print("[$level] $message");
  }

  logMessage("Error found");
  logMessage("Critical error", "ERROR");

  // 13. ฟังก์ชัน processNumbers
  void processNumbers(List<int> list, Function(int) action) {
    for (var n in list) {
      action(n);
    }
  }

  // 14. ฟังก์ชัน printSquare และเรียกใช้ processNumbers
  void printSquare(int n) {
    print(n * n);
  }

  processNumbers([1, 2, 3], printSquare);

  // 15. เรียกใช้ processNumbers กับ Anonymous Function
  processNumbers([10, 20], (num) {
    print("Value: $num");
  });
}

// การเขียนโปรแกรมเชิงวัตถุ (OOP) - ตอนที่ 1

// ✅ คลาส Car
class Car {
  String? color;          // คุณลักษณะ color
  int? year;              // คุณลักษณะ year
  static const int numberOfWheels = 4; // static const

  // เมธอด drive
  void drive() {
    print("Driving the ${color} car...");
  }
}

// ✅ คลาส Book
class Book {
  String title;
  int pages;

  // Constructor แบบย่อ
  Book(this.title, this.pages);
}

// ✅ คลาส MathHelper
class MathHelper {
  static int add(int a, int b) {
    return a + b;
  }
}

// ✅ ฟังก์ชันหลัก main()
void main() {
  // ---------- ข้อ 1–5 ----------
  var myCar = Car();        // สร้างอ็อบเจกต์จากคลาส Car
  myCar.color = "Red";      // กำหนดค่า color
  print(myCar.color);       // แสดงค่า color
  myCar.drive();            // เรียกใช้เมธอด drive
  print(Car.numberOfWheels); // เรียกใช้ static const โดยไม่สร้างอ็อบเจกต์

  // ---------- ข้อ 6–7 ----------
  var myBook = Book("Dart Basics", 200);
  print(myBook.title);      // แสดงชื่อหนังสือ
  print(myBook.pages);      // แสดงจำนวนหน้า

  // ---------- ข้อ 8–9 ----------
  int result = MathHelper.add(15, 30);
  print(result);            // แสดงผลรวม
}


}