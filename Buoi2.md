# BUOI 2: Biến, Nullable, Hàm, bất đồng bộ, Class...

- [BUOI 2: Biến, Nullable, Hàm, bất đồng bộ, Class...](#buoi-2-biến-nullable-hàm-bất-đồng-bộ-class)
  - [I. Biến và Kiểu dữ liệu](#i-biến-và-kiểu-dữ-liệu)
    - [1. Var](#1-var)
    - [2. Dynamic](#2-dynamic)
    - [3. final](#3-final)
    - [4. const](#4-const)
    - [5. Late Initialization (late)](#5-late-initialization-late)
    - [6. Kiểu Dữ Liệu (Data Types)](#6-kiểu-dữ-liệu-data-types)
      - [6.1. Kiểu Số `(int, double)`](#61-kiểu-số-int-double)
      - [6.2. Chuỗi `(String)`](#62-chuỗi-string)
      - [6.3. Danh Sách (List)](#63-danh-sách-list)
  - [II. Nullable, Null Safety](#ii-nullable-null-safety)
    - [Null Safety](#null-safety)
      - [1. Khái niệm Null Safety](#1-khái-niệm-null-safety)
      - [2. Các nguyên tắc chính của Null Safety](#2-các-nguyên-tắc-chính-của-null-safety)
      - [3. Cách làm việc với Null Safety](#3-cách-làm-việc-với-null-safety)
      - [4. Null Safety với Collections](#4-null-safety-với-collections)
      - [5. Lợi ích của Null Safety](#5-lợi-ích-của-null-safety)
  - [III. Functions](#iii-functions)
    - [1. Required Positional Parameters (Tham số vị trí bắt buộc)](#1-required-positional-parameters-tham-số-vị-trí-bắt-buộc)
    - [2. Optional Positional Parameters (Tham số vị trí tùy chọn)](#2-optional-positional-parameters-tham-số-vị-trí-tùy-chọn)
    - [3. Named Parameters (Tham số đặt tên)](#3-named-parameters-tham-số-đặt-tên)
    - [4. Required Named Parameters (Tham số đặt tên bắt buộc)](#4-required-named-parameters-tham-số-đặt-tên-bắt-buộc)
    - [5. Default Parameters (Tham số mặc định)](#5-default-parameters-tham-số-mặc-định)
    - [6. Anonymous Functions (Hàm ẩn danh)](#6-anonymous-functions-hàm-ẩn-danh)
    - [7. Higher-Order Functions (Hàm bậc cao)](#7-higher-order-functions-hàm-bậc-cao)
    - [8. Recursive Functions (Hàm đệ quy)](#8-recursive-functions-hàm-đệ-quy)
    - [9. Lexical Scope (Phạm vi từ vựng)](#9-lexical-scope-phạm-vi-từ-vựng)
  - [IV. Tìm hiểu về bất đồng bộ](#iv-tìm-hiểu-về-bất-đồng-bộ)
    - [1. Khái niệm cơ bản](#1-khái-niệm-cơ-bản)
    - [2. Future](#2-future)
      - [2.1 `Future` là gì?](#21-future-là-gì)
      - [2.2 Chi tiết trạng thái của Future](#22-chi-tiết-trạng-thái-của-future)
      - [2.3. Hoàn thành với giá trị (Completing with a value)](#23-hoàn-thành-với-giá-trị-completing-with-a-value)
      - [2.4 Hoàn thành với lỗi (Completing with an error)](#24-hoàn-thành-với-lỗi-completing-with-an-error)
    - [3. Working with futures: async and await](#3-working-with-futures-async-and-await)
      - [Chuyển đổi hàm main() từ đồng bộ sang bất đồng bộ](#chuyển-đổi-hàm-main-từ-đồng-bộ-sang-bất-đồng-bộ)
      - [So sánh giữa hàm đồng bộ và bất đồng bộ](#so-sánh-giữa-hàm-đồng-bộ-và-bất-đồng-bộ)
    - [4. Future và phương thức then](#4-future-và-phương-thức-then)
    - [5. Asynchronous programming: Streams](#5-asynchronous-programming-streams)
  - [V. Class](#v-class)
    - [1. Giới thiệu về Class](#1-giới-thiệu-về-class)
    - [2. Fields (Thuộc tính)](#2-fields-thuộc-tính)
    - [3. Constructors (Hàm tạo)](#3-constructors-hàm-tạo)
      - [a. Default Constructor](#a-default-constructor)
      - [b. Named Constructor](#b-named-constructor)
      - [c. Redirecting Constructor](#c-redirecting-constructor)
      - [d. Factory Constructor](#d-factory-constructor)
    - [4. Methods (Phương thức)](#4-methods-phương-thức)
      - [Getter và Setter](#getter-và-setter)
    - [5. Inheritance (Kế thừa)](#5-inheritance-kế-thừa)
    - [6. Abstract Classes](#6-abstract-classes)
    - [7. Extension Methods](#7-extension-methods)
  - [VI. With, Mixin](#vi-with-mixin)
    - [1.  Cách sử dụng Mixins](#1--cách-sử-dụng-mixins)
    - [2. Định nghĩa một Mixin](#2-định-nghĩa-một-mixin)
    - [3. Đảm bảo các thành viên cần thiết trong mixin](#3-đảm-bảo-các-thành-viên-cần-thiết-trong-mixin)
    - [4. Sử dụng từ khóa `on` để giới hạn lớp cha](#4-sử-dụng-từ-khóa-on-để-giới-hạn-lớp-cha)
    - [5. class, mixin, or mixin class?](#5-class-mixin-or-mixin-class)
  - [BTVN.](#btvn)
    - [Bài 1:](#bài-1)
  - [Bài 2](#bài-2)
    - [Tìm hiểu thêm về implement và extend.](#tìm-hiểu-thêm-về-implement-và-extend)
      - [1. extend (Kế thừa lớp)](#1-extend-kế-thừa-lớp)
      - [2. implement (Thực thi Interface)](#2-implement-thực-thi-interface)
      - [3. Kết hợp extends và implements](#3-kết-hợp-extends-và-implements)

## I. Biến và Kiểu dữ liệu

### 1. Var

- Dart tự suy luận kiểu dữ liệu dựa trên giá trị khởi tạo.
- Sau khi khởi tạo, biến không thể gán giá trị khác kiểu ban đầu.

```Dart
var name = 'Alice'; // Kiểu String
// name = 42; // Lỗi: Không thể gán kiểu int cho biến kiểu String
print(name); // Kết quả: Alice
```

Lưu ý:

**Không khởi tạo giá trị ban đầu**: Nếu không khởi tạo, biến có kiểu dynamic mặc định.
```dart
var value; // Mặc định là dynamic
value = 'Hello'; // Kiểu String
value = 42; // Chuyển thành kiểu int
```

### 2. Dynamic

- dynamic là kiểu dữ liệu có thể thay đổi trong runtime.
- Dùng khi bạn cần một biến có thể lưu nhiều loại giá trị.

``` dart
dynamic anything = 'Hello'; // Kiểu String
anything = 123; // Chuyển thành kiểu int
print(anything); // Kết quả: 123
```

**Lỗi thường gặp:**

- Sử dụng `dynamic` không hợp lý có thể gây lỗi runtime, ví dụ khi cố gắng sử dụng phương thức không tồn tại trên kiểu dữ liệu hiện tại.

```dart
dynamic value = 'Hello';
print(value.length); // OK: length tồn tại trên String
value = 42;
// print(value.length); // Lỗi runtime: int không có length
```

### 3. final

- Giá trị của `final` chỉ có thể được gán một lần.
- Dùng cho các biến mà giá trị được xác định tại `runtime`.

```dart
final currentTime = DateTime.now(); // Giá trị chỉ định tại runtime
print(currentTime);

// currentTime = DateTime.now(); // Lỗi: Không thể gán lại giá trị
```

### 4. const

- Giá trị của `const` phải được biết tại thời điểm biên dịch (compile-time).
- Dùng cho các giá trị bất biến, như hằng số.

```dart
const pi = 3.14; // Giá trị bất biến
const radius = 5;
const area = pi * radius * radius;
print(area); // Kết quả: 78.5

```

*Không thể dùng const với giá trị chỉ có tại runtime.
dart*
```dart
// const currentTime = DateTime.now(); // Lỗi: DateTime.now() chỉ xác định tại runtime
```
| Từ khóa   | Có thể thay đổi? | Giá trị được gán tại runtime? |
|-----------|-------------------|-----------------------------|
| var       | Có               | Có                         |
| dynamic   | Có               | Có                         |
| final     | Không            | Có                         |
| const     | Không            | Không                      |


### 5. Late Initialization (late)

- Từ khóa `late` cho phép trì hoãn việc khởi tạo biến, nhưng biến chỉ được khởi tạo một lần.

```dart
late String description;

description = 'This is a late variable'; // Gán giá trị sau
print(description); // Kết quả: This is a late variable
```

*Truy cập biến late trước khi khởi tạo sẽ gây lỗi runtime.*
```dart
late int value;
// print(value); // Lỗi runtime: Biến chưa được khởi tạo
```

**Khi nào nên dùng late?**

- Bạn cần đảm bảo rằng biến sẽ được khởi tạo trước khi sử dụng, nhưng không thể khởi tạo ngay tại thời điểm khai báo.
- Biến sử dụng tài nguyên lớn (ví dụ: đọc dữ liệu từ tệp, gọi API) và chỉ nên khởi tạo khi cần thiết

### 6. Kiểu Dữ Liệu (Data Types)

#### 6.1. Kiểu Số `(int, double)`

- `int`: Lưu trữ số `nguyên`.
- `double`: Lưu trữ số `thực`.

```dart
int age = 25; // Số nguyên
double height = 1.75; // Số thực
print('Tuổi: $age, Chiều cao: $height'); // Tuổi: 25, Chiều cao: 1.75
```

#### 6.2. Chuỗi `(String)`

- Dart hỗ trợ dấu nháy đơn ' và nháy kép ".
- Có thể nối chuỗi bằng ký tự $.

```dart
String firstName = 'Alice';
String lastName = "Smith";
String fullName = '$firstName $lastName'; // Nối chuỗi
print(fullName); // Alice Smith
```

***Chuỗi nhiều dòng:***

```dart
String paragraph = '''
Dart là ngôn ngữ lập trình mạnh mẽ.
Nó được sử dụng cho ứng dụng web và di động.
''';
print(paragraph);
```

#### 6.3. Danh Sách (List)

- Danh sách `động`: Có thể thêm hoặc xóa phần tử.
- Danh sách `cố định` (const): Không thể thay đổi phần tử sau khi tạo.

```dart
List<int> numbers = [1, 2, 3]; // Danh sách động
numbers.add(4); // Thêm phần tử
print(numbers); // [1, 2, 3, 4]

List<String> colors = const ['Red', 'Green', 'Blue'];
// colors.add('Yellow'); // Lỗi: Danh sách cố định không thể thay đổi
```

## II. Nullable, Null Safety

- `Nullable` là một biến có thể nhận giá trị `null`.


- `Null Safety` đảm bảo rằng bạn sử dụng `nullable` an toàn và tránh lỗi do null trong runtime.

- `Nullable` chỉ là một loại biến trong` Null Safety`, cho phép giá trị null khi cần thiết.


### Null Safety

#### 1. Khái niệm Null Safety

- Null Safety là tính năng giúp loại bỏ lỗi liên quan đến việc truy cập giá trị `null` trong chương trình.
- `Dart` đảm bảo rằng các biến không nullable (không cho phép giá trị null) sẽ luôn có giá trị trước khi được sử dụng.
- Chỉ những biến được khai báo là nullable (`?`) mới có thể nhận giá trị `null`.

```dart
int? nullableVar; // Có thể là null
int nonNullableVar = 10; // Không thể là null

nullableVar = null; // Hợp lệ
// nonNullableVar = null; // Lỗi biên dịch
```

#### 2. Các nguyên tắc chính của Null Safety

**Biến mặc định là không nullable:**
- Mọi biến phải được gán giá trị trước khi sử dụng, trừ khi được chỉ định là nullable (`?`).

**An toàn tuyệt đối:**

- Dart đảm bảo tại thời điểm biên dịch rằng các biến không nullable không bao giờ là null.

**Kiểm tra null tại biên dịch:**

- Dart sẽ cảnh báo nếu một nullable variable có thể gây lỗi null runtime.

#### 3. Cách làm việc với Null Safety

 **Biến nullable (`?`)**

- Sử dụng dấu `?` sau kiểu dữ liệu để khai báo biến có thể nhận giá trị `null`.

```dart
String? name; // Biến nullable
name = null; // Hợp lệ
```
 **Toán tử không null (`!`)**

- Dùng `!` để khẳng định rằng biến nullable không null trước khi truy cập.

```dart
String? name = 'Dart';
print(name!.length); // Hợp lệ vì name không phải null
```

***Cảnh báo:***

- Nếu biến thực sự là null, sử dụng ! sẽ gây lỗi runtime.

**Toán tử gán nếu null (`??`)**

- Dùng `??` để cung cấp giá trị thay thế nếu biến là `null`.

```dart
String? nullableName;
String name = nullableName ?? 'Default Name';
print(name); // Kết quả: Default Name
```

**Toán tử gọi điều kiện (`?.`)**

- Dùng `?.` để gọi phương thức trên biến nullable mà không gây lỗi nếu biến là `null`.

```dart
String? name;
print(name?.length); // Kết quả: null
```

 **Toán tử gán null (??=)**

 Gán giá trị cho biến chỉ khi biến hiện tại là null.
```dart
String? name;
name ??= 'Default Name'; // Gán giá trị nếu name là null
print(name); // Kết quả: Default Name
```

#### 4. Null Safety với Collections

Dart hỗ trợ Null Safety trong các list, map, và set.

**List với nullable element**
```dart
List<int?> numbers = [1, 2, null, 4]; // Các phần tử có thể null
print(numbers); // [1, 2, null, 4]
```

**Nullable list**
```dart
List<int>? nullableList; // Cả list có thể là null
nullableList = null;
```
#### 5. Lợi ích của Null Safety

- Giảm lỗi runtime: Ngăn chặn lỗi null reference phổ biến.
- Cải thiện hiệu suất: Dart có thể tối ưu hóa mã không nullable.
- Phát triển nhanh chóng hơn: Lỗi được phát hiện sớm trong quá trình biên dịch.

## III. Functions

`Dart` là ngôn ngữ hướng đối tượng, vì vậy hàm cũng là object với kiểu dữ liệu Function. Bạn có thể:

- Gán hàm vào biến.
- Truyền hàm làm tham số cho hàm khác.
- Gọi một instance của lớp như một hàm (nếu lớp đó hỗ trợ).

```
bool isNoble(int atomicNumber) {
  return _nobleGases[atomicNumber] != null;
}
```

**Bỏ qua khai báo kiểu dữ liệu:**
Hàm vẫn hoạt động dù không khai báo kiểu:

```dart
isNoble(atomicNumber) {
  return _nobleGases[atomicNumber] != null;
}
```

**Cú pháp rút gọn với `=>`:**

Nếu hàm chỉ có một biểu thức, dùng `=>` để viết gọn:

```dart
bool isNoble(int atomicNumber) => _nobleGases[atomicNumber] != null;
```

> => tương đương { return expr; } và được gọi là arrow syntax.

***Lưu ý:***

- *Chỉ các expression (trả về giá trị) mới đặt được giữa `=>` và `;`.*

### 1. Required Positional Parameters (Tham số vị trí bắt buộc)

- Đây là các tham số `bắt buộc` phải được truyền khi gọi hàm.
- Thứ tự truyền tham số `phải đúng` với thứ tự định nghĩa.

```dart
void greet(String name, int age) {
  print('Hello $name, you are $age years old.');
}
void main(){
  greet('Alice', 25);
}
```

### 2. Optional Positional Parameters (Tham số vị trí tùy chọn)

- Các tham số này được đặt trong dấu ngoặc vuông `[]`.

- Không bắt buộc phải truyền khi gọi hàm. Nếu không truyền, chúng nhận giá trị `null` (hoặc giá trị mặc định nếu được chỉ định).

``` dart
void greet(String name, [int? age]) {
  if (age != null) {
    print('Hello $name, you are $age years old.');
  } else {
    print('Hello $name.');
  }
}
void main(){
  greet('Bob');       // Output: Hello Bob.
  greet('Charlie', 30); // Output: Hello Charlie, you are 30 years old.
}
```

### 3. Named Parameters (Tham số đặt tên)

- Các tham số được đặt trong dấu ngoặc nhọn `{}`.
- Khi gọi hàm, bạn phải chỉ định tên tham số kèm giá trị tương ứng, giúp code dễ đọc hơn.
- Theo mặc định, các tham số đặt tên là tùy chọn.

```dart
void greet({String? name, int? age}) {
  if (name != null && age != null) {
    print('Hello $name, you are $age years old.');
  } else {
    print('Hello!');
  }
}
void main(){
  greet(name: 'Diana', age: 28); // Output: Hello Diana, you are 28 years old.
  greet(name: 'Eve');           // Output: Hello!
}
```

### 4. Required Named Parameters (Tham số đặt tên bắt buộc)

- Để bắt buộc một tham số đặt tên, bạn thêm từ khóa `required`.
- Điều này đảm bảo rằng người gọi hàm phải truyền giá trị cho tham số đó.

```dartvoid greet({required String name, int age = 18}) {
  print('Hello $name, you are $age years old.');
}

void main() {
  greet(name: 'Frank'); // Output: Hello Frank, you are 18 years old.
  greet(name: 'Grace', age: 22); // Output: Hello Grace, you are 22 years old.
// greet(age: 22);          // Lỗi: Thiếu tham số 'name'.
}
```

### 5. Default Parameters (Tham số mặc định)

- Bạn có thể gán giá trị mặc định cho tham số, áp dụng cho cả `optional positional` và `optional named parameters`.
- Nếu không truyền tham số, giá trị mặc định sẽ được sử dụng.

```dart
void greet(String name, [int age = 18]) {
  print('Hello $name, you are $age years old.');
}

// Gọi hàm
greet('Hank');       // Output: Hello Hank, you are 18 years old.
greet('Ivy', 25);    // Output: Hello Ivy, you are 25 years old.
```

Hoặc với tham số đặt tên:

```dart
void greet({String name = 'Guest', int age = 18}) {
  print('Hello $name, you are $age years old.');
}

// Gọi hàm
greet();                      // Output: Hello Guest, you are 18 years old.
greet(name: 'Jack');          // Output: Hello Jack, you are 18 years old.
greet(name: 'Jill', age: 21); // Output: Hello Jill, you are 21 years old.
```

### 6. Anonymous Functions (Hàm ẩn danh)

- Đây là các hàm không có tên, thường được sử dụng trong các biểu thức ngắn gọn hoặc làm tham số cho hàm khác.

```dart
void main() {
  var list = ['apple', 'banana', 'orange'];

  // Sử dụng hàm ẩn danh với forEach
  list.forEach((item) {
    print(item); // In từng phần tử trong danh sách
  });

  // Sử dụng cú pháp ngắn gọn (arrow syntax)
  list.forEach((item) => print(item));
}
```

### 7. Higher-Order Functions (Hàm bậc cao)

- Hàm bậc cao là hàm nhận một hàm khác làm tham số hoặc trả về một hàm.

```Dart
void printElement(int element) {
  print(element); // In từng phần tử
}

void main() {
  var list = [1, 2, 3];

  // Gọi hàm bậc cao forEach với hàm printElement
  list.forEach(printElement); // Output: 1, 2, 3
}
```

### 8. Recursive Functions (Hàm đệ quy)

- Hàm đệ quy là hàm tự gọi lại chính nó.

```dart
int factorial(int n) {
  if (n <= 1) return 1;
  return n * factorial(n - 1);
}

// Gọi hàm
print(factorial(5)); // Output: 120
```

### 9. Lexical Scope (Phạm vi từ vựng)

- Dart sử dụng phạm vi từ vựng (lexical scoping), nghĩa là biến chỉ có thể được truy cập trong phạm vi mà nó được định nghĩa.
-  Dart sử dụng nguyên tắc này để quyết định biến nào sẽ được sử dụng tại một thời điểm cụ thể.

```dart
void main() {
  var name = 'Outer'; // Biến 'name' được định nghĩa trong phạm vi của hàm main()

  void innerFunction() {
    var innerName = 'Inner'; // Biến 'innerName' chỉ có thể truy cập bên trong innerFunction
    print(name); // Có thể truy cập biến 'name' từ outer scope (phạm vi bên ngoài)
    print(innerName); // Có thể truy cập 'innerName' vì nó được định nghĩa trong phạm vi hiện tại
  }

  innerFunction(); // Gọi hàm innerFunction
}
```

## IV. Tìm hiểu về bất đồng bộ

[Asynchronous](https://dart.dev/libraries/async/async-await)

- `Asynchronous operation` (Hoạt động bất đồng bộ): Sau khi bắt đầu, cho phép các hoạt động khác thực thi trước khi hoàn thành.

- `Asynchronous function` (Hàm bất đồng bộ): Thực hiện ít nhất một hoạt động bất đồng bộ và có thể thực hiện các hoạt động đồng bộ.
### 1. Khái niệm cơ bản



`Bất đồng bộ` trong Dart được sử dụng để xử lý các tác vụ cần thời gian thực hiện dài (như đọc/ghi tệp, gọi API, xử lý dữ liệu lớn). Mục tiêu là không để chương trình bị chặn trong khi chờ tác vụ hoàn tất.

Dart hỗ trợ lập trình bất đồng bộ thông qua:

- `Future`: Đại diện cho một giá trị hoặc lỗi sẽ sẵn sàng trong tương lai.
- `Stream:` Đại diện cho một chuỗi các giá trị bất đồng bộ.
- Từ khóa `async` và `await`: Giúp mã bất đồng bộ trông giống đồng bộ hơn.
- Phương thức `then()`: Xử lý kết quả khi một Future hoàn thành.


**Tại sao mã bất đồng bộ quan trọng?**

Các hoạt động bất đồng bộ cho phép chương trình của bạn tiếp tục thực hiện các tác vụ khác trong khi chờ một tác vụ dài hoàn thành. Một số ví dụ phổ biến về các hoạt động bất đồng bộ bao gồm:

- **Lấy dữ liệu qua mạng** (Fetching data over a network).
- **Ghi dữ liệu vào cơ sở dữ liệu** (Writing to a database).
- **Đọc dữ liệu từ tệp** (Reading data from a file).

**Kết quả của các tác vụ bất đồng bộ**

- Những tính toán bất đồng bộ này thường trả về kết quả dưới dạng một `Future` nếu chỉ có một kết quả.

- Nếu có nhiều kết quả (ví dụ như một chuỗi các sự kiện), chúng sẽ được trả về dưới dạng `Stream`.

Ví dụ: Sử dụng hàm bất đồng bộ không đúng cách
```dart
String createOrderMessage() {
  var order = fetchUserOrder();
  return 'Your order is: $order';
}

Future<String> fetchUserOrder() =>
    // Giả sử đây là một hàm phức tạp và chậm.
    Future.delayed(
      const Duration(seconds: 2),
      () => 'Large Latte',
    );

void main() {
  print('Fetching user order...');
  print(createOrderMessage());
}
```

Vấn đề trong ví dụ:

- `fetchUserOrder()` là một hàm bất đồng bộ: Sau một khoảng trễ, nó cung cấp một chuỗi mô tả đơn hàng của người dùng ("Large Latte").
- `createOrderMessage()` không chờ đợi: Hàm này gọi `fetchUserOrder()` nhưng không đợi kết quả trả về.
- Kết quả không mong muốn: Thay vì in `"Large Latte"`, chương trình in `"Your order is: Instance of '_Future<String>'"`, tức là một Future chưa hoàn thành.

### 2. Future

#### 2.1 `Future` là gì?

- Một `future` (chữ thường) là một instance của lớp `Future` (chữ in hoa) trong Dart.
- Một `future` đại diện cho kết quả của một hoạt động bất đồng bộ và có thể tồn tại trong hai trạng thái:
  - **Chưa hoàn thành (Uncompleted)**: Khi hoạt động chưa kết thúc.
  - **Đã hoàn thành (Completed)**: Khi hoạt động hoàn thành với:
    - Một giá trị (nếu thành công).
    - Một lỗi (nếu thất bại).

#### 2.2 Chi tiết trạng thái của Future

**Chưa hoàn thành (Uncompleted)**

Khi bạn gọi một hàm bất đồng bộ, hàm trả về một `future` ở trạng thái **chưa hoàn thành**.

Trong trạng thái này, `future` đang chờ:
- Hoạt động bất đồng bộ hoàn tất.
- Hoặc ném ra lỗi.

**Đã hoàn thành (Completed)**

Khi hoạt động bất đồng bộ hoàn tất, `future` chuyển sang **trạng thái đã hoàn thành**:

- Hoàn thành với **giá trị**: Nếu hoạt động thành công.
- Hoàn thành với **lỗi**: Nếu hoạt động thất bại.

#### 2.3. Hoàn thành với giá trị (Completing with a value)

Một `future` có kiểu `Future<T>` hoàn thành với một giá trị thuộc kiểu `T`.
- Ví dụ: `Future<String>` sẽ trả về một giá trị kiểu `String`.

Nếu `future` không trả về giá trị, kiểu của nó sẽ là `Future<void>`.

```dart
Future<void> fetchUserOrder() {
  return Future.delayed(
    const Duration(seconds: 2),
    () => print('Large Latte'),
  );
}

void main() {
  print('Fetching user order...');
  fetchUserOrder();
}
```

```
Fetching user order...
Large Latte
```

*- Hoạt động bất đồng bộ bị trì hoãn bởi `Future.delayed.`*

*- Trong thời gian đó, các lệnh khác tiếp tục thực thi.*

#### 2.4 Hoàn thành với lỗi (Completing with an error)

Khi hoạt động bất đồng bộ thất bại, `future` hoàn thành với một `lỗi`.

```dart
Future<void> fetchUserOrder() {
  return Future.delayed(
    const Duration(seconds: 2),
    () => throw 'Invalid user ID',
  );
}

void main() {
  print('Fetching user order...');
  fetchUserOrder();
}
```

### 3. Working with futures: async and await

Các từ khóa `async` và `await` trong Dart cung cấp một cách khai báo rõ ràng để định nghĩa các hàm bất đồng bộ (asynchronous functions) và xử lý kết quả của chúng.

**Nguyên tắc chính:**
-  Để định nghĩa một hàm bất đồng bộ, thêm từ khóa `async` trước thân hàm.
-  Từ khóa `await` chỉ có thể sử dụng trong các hàm được đánh dấu với `async`.


#### Chuyển đổi hàm main() từ đồng bộ sang bất đồng bộ

1. Thêm từ khóa `async` trước thân hàm:

```dart
void main() async { ··· }
```

2. Nếu hàm có kiểu trả về đã được khai báo, cập nhật kiểu trả về thành `Future<T>`, trong đó `T` là kiểu giá trị mà hàm trả về. Nếu hàm không trả về giá trị cụ thể, kiểu trả về sẽ là `Future<void>`:

```dart
Future<void> main() async { ··· }
```
3. Khi đã có hàm bất đồng bộ, sử dụng từ khóa `await` để chờ một future hoàn thành:

```dart
print(await createOrderMessage());
```

#### So sánh giữa hàm đồng bộ và bất đồng bộ

**Hàm đồng bộ**

```dart
String createOrderMessage() {
  var order = fetchUserOrder();
  return 'Your order is: $order';
}

Future<String> fetchUserOrder() =>
    Future.delayed(
      const Duration(seconds: 2),
      () => 'Large Latte',
    );

void main() {
  print('Fetching user order...');
  print(createOrderMessage());
}
```

```vbnet
Fetching user order...
Your order is: Instance of 'Future<String>'
```

*`fetchUserOrder()` là một asynchronous function, nhưng `createOrderMessage()` không chờ nó hoàn thành. Do đó, thay vì nhận giá trị `"Large Latte"`, chương trình in ra một `Future` chưa hoàn thành.*


**Hàm bất đồng bộ**

```dart
Future<String> createOrderMessage() async {
  var order = await fetchUserOrder();
  return 'Your order is: $order';
}

Future<String> fetchUserOrder() =>
    Future.delayed(
      const Duration(seconds: 2),
      () => 'Large Latte',
    );

Future<void> main() async {
  print('Fetching user order...');
  print(await createOrderMessage());
}
```

```vbnet
Fetching user order...
Your order is: Large Latte
```

**Sự khác biệt giữa hai ví dụ:**

**1. Kiểu trả về thay đổi:**

- `createOrderMessage()` thay đổi kiểu trả về từ `String` thành `Future<String>`.

**2. Thêm từ khóa `async`:**

- Thêm `async` trước thân hàm `createOrderMessage()` và `main()`.

**3. Sử dụng từ khóa await:**

- Thêm `await` để chờ kết quả từ `fetchUserOrder()` và `createOrderMessage()`.

**Các thuật ngữ quan trọng**

- **`async`**: Từ khóa dùng để khai báo một asynchronous function.

- **Asynchronous function**: Một hàm được đánh dấu với từ khóa **`async`**.

- **`await`**: Từ khóa dùng để nhận kết quả hoàn thành từ một biểu thức bất đồng bộ. Từ khóa này chỉ hoạt động trong các hàm **`async`**.

**Ví dụ: Luồng thực thi bên trong hàm async**

```dart
Future<void> printOrderMessage() async {
  print('Awaiting user order...');
  var order = await fetchUserOrder();
  print('Your order is: $order');
}

Future<String> fetchUserOrder() {
  // Giả sử hàm này phức tạp và chậm.
  return Future.delayed(const Duration(seconds: 4), () => 'Large Latte');
}

void main() async {
  countSeconds(4);
  await printOrderMessage();
}

// Hàm hỗ trợ - hiển thị bộ đếm thời gian để minh họa độ trễ.
void countSeconds(int s) {
  for (var i = 1; i <= s; i++) {
    Future.delayed(Duration(seconds: i), () => print(i));
  }
}
```

```sql
Awaiting user order...
1
2
3
4
Your order is: Large Latte
```

- Một `async function` chạy đồng bộ cho đến khi gặp lệnh `await`.
- Sau lệnh `await`, luồng thực thi tạm dừng để đợi kết quả từ `Future`.
- Phần còn lại của chương trình vẫn chạy song song nếu không bị tạm dừng bởi `await`.
- Kết quả sẽ xuất hiện theo trình tự thực thi được chỉ định trong code.

### 4. Future và phương thức then

[then](https://dart.dev/libraries/async/futures-error-handling)

Trong Dart, phương thức `then` được sử dụng để đăng ký các callback sẽ được gọi khi một `Future` hoàn thành. Khi một Future hoàn thành với một giá trị, callback `onValue` sẽ được gọi với giá trị đó. 

Nếu `Future` hoàn thành với lỗi và callback `onError` được cung cấp, `onError` sẽ được gọi với lỗi và stack trace tương ứng.

**Tham số:**
- **`onValue`**: Callback được gọi khi **`Future`** hoàn thành với một giá trị.
- **`onError`** *(tùy chọn)*: Callback được gọi khi **`Future`** hoàn thành với lỗi.

**Lưu ý:**
- Nếu **`onError`** không được cung cấp và **`Future`** hoàn thành với lỗi, lỗi sẽ được chuyển tiếp trực tiếp đến **`Future`** được trả về bởi **`then`**.
- Nếu callback trả về một **`Future`**, **`Future`** được trả về bởi **`then`** sẽ hoàn thành với cùng kết quả như **`Future`** được trả về bởi callback.
- Nếu callback ném ra một ngoại lệ, **`Future`** được trả về bởi **`then`** sẽ hoàn thành với lỗi đó và stack trace tương ứng.


**Cú pháp**

```dart
Future<R> then<R>(
  FutureOr<R> onValue(T value), {
  Function? onError,
});
```

```dart
Future<int> fetchData() {
  // Giả sử đây là một thao tác bất đồng bộ
  return Future.delayed(Duration(seconds: 2), () => 42);
}

void main() {
  fetchData().then((value) {
    print('Giá trị nhận được: $value');
  }).catchError((error) {
    print('Đã xảy ra lỗi: $error');
  });
}
```

Trong ví dụ này, `fetchData()` trả về một `Future<int>`. Phương thức `then` được sử dụng để xử lý giá trị khi `Future` hoàn thành. Nếu có lỗi xảy ra, `catchError` sẽ xử lý lỗi đó.


### 5. Asynchronous programming: Streams

Trong Dart, `Stream` là một chuỗi dữ liệu bất đồng bộ, cho phép bạn xử lý các sự kiện hoặc dữ liệu xuất hiện theo thời gian. 

`Streams` hữu ích khi làm việc với các sự kiện người dùng, dữ liệu đọc từ tệp hoặc phản hồi từ mạng.

**Các loại Stream:**
1. **Single-subscription Stream:** Chỉ cho phép một listener đăng ký lắng nghe. Thường được sử dụng cho các thao tác I/O như đọc tệp hoặc nhận phản hồi HTTP.

2. **Broadcast Stream:** Cho phép nhiều listener cùng đăng ký lắng nghe. Thường được sử dụng cho các sự kiện như nhấn nút hoặc thay đổi dữ liệu.

**Sử dụng Stream:**

- **Lắng nghe Stream:** Sử dụng phương thức `listen` để đăng ký một callback xử lý mỗi sự kiện khi nó xuất hiện.

```dart
import 'dart:async';

void main() {
  Stream<int> stream = Stream.fromIterable([1, 2, 3]);
  
  // Lắng nghe Stream
  stream.listen((value) {
    print('Giá trị nhận được: $value');
  }, onDone: () {
    print('Stream đã hoàn thành.');
  });
}
```

```
Giá trị nhận được: 1
Giá trị nhận được: 2
Giá trị nhận được: 3
Stream đã hoàn thành.
```

- Sử dụng `await for`: Trong một hàm `async`, bạn có thể sử dụng `await for`để lặp qua các sự kiện của Stream.

```dart
import 'dart:async';

void main() async {
  Stream<int> stream = Stream.fromIterable([1, 2, 3]);
  
  // Lặp qua Stream
  await for (var value in stream) {
    print('Giá trị nhận được: $value');
  }
  print('Stream đã hoàn thành.');
}
```
```
Giá trị nhận được: 1
Giá trị nhận được: 2
Giá trị nhận được: 3
Stream đã hoàn thành.
```

**Xử lý lỗi trong Stream:**

Streams có thể phát ra các sự kiện lỗi. Bạn có thể xử lý chúng bằng cách cung cấp một callback `onError` trong phương thức `listen` hoặc sử dụng khối `try-catch` với `await for`.

```dart
stream.listen(
  (value) {
    print(value);
  },
  onError: (error) {
    print('Đã xảy ra lỗi: $error');
  },
);
```
**Tạo Stream:**

Sử dụng `StreamController`: Cho phép bạn tạo và quản lý một `Stream`.


```dart
import 'dart:async';

void main() {
  final controller = StreamController<int>();

  // Đăng ký lắng nghe Stream
  controller.stream.listen((value) {
    print('Nhận giá trị: $value');
  }, onDone: () {
    print('Stream đã đóng.');
  });

  // Thêm giá trị vào Stream
  controller.sink.add(1);
  controller.sink.add(2);
  controller.sink.add(3);

  // Đóng Stream
  controller.close();
}
```

```
Nhận giá trị: 1
Nhận giá trị: 2
Nhận giá trị: 3
Stream đã đóng.
```

Sử dụng hàm `async*` và từ khóa `yield`: Cho phép bạn tạo một Stream bằng cách phát ra các sự kiện tuần tự.

```dart
Stream<int> numberStream() async* {
  for (int i = 1; i <= 3; i++) {
    yield i; // Phát ra từng giá trị
    await Future.delayed(Duration(seconds: 1)); // Mô phỏng trễ
  }
}

void main() async {
  await for (var number in numberStream()) {
    print('Số: $number');
  }
}
```

```
Số: 1
Số: 2
Số: 3
```

**Chuyển đổi và thao tác với Stream:**

Streams cung cấp nhiều phương thức để chuyển đổi và thao tác dữ liệu, như `map`, `where`, `expand`, `take`, `skip`, và `reduce`.

- Dùng `map` để chuyển đổi giá trị

```dart
void main() {
  Stream<int> stream = Stream.fromIterable([1, 2, 3]);

  Stream<int> doubledStream = stream.map((value) => value * 2);

  doubledStream.listen((value) {
    print('Giá trị sau khi nhân đôi: $value');
  });
}
```
```
Giá trị sau khi nhân đôi: 2
Giá trị sau khi nhân đôi: 4
Giá trị sau khi nhân đôi: 6
```

## V. Class

### 1. Giới thiệu về Class

- `Class` trong `Dart` là một cách để định nghĩa một kiểu dữ liệu tùy chỉnh, bao gồm dữ liệu (`fields`) và hành vi (`methods`) của kiểu đó.
- `Object` (đối tượng) là một thể hiện (`instance`) của một class.
- Class được sử dụng rộng rãi để tổ chức code theo cách hướng đối tượng (Object-Oriented Programming - OOP).

```dart
class Person{
  String name="";
  int age=0;
  void introduce(){
    print('Hi, I\'m $name and I\'m $age years old.');
  }
}
void main()
{
  Person person=Person();
  person.name="Hieu";
  person.age=18;
  person.introduce();
}
```

### 2. Fields (Thuộc tính)

- Fields là các biến được khai báo bên trong class để lưu trữ trạng thái hoặc dữ liệu của đối tượng.
- Các field có thể được gán giá trị mặc định hoặc không.

```dart
class Car {
  String brand; // Thuộc tính không được khởi tạo mặc định
  int year = 2023; // Thuộc tính có giá trị mặc định

  Car(this.brand, this.year);
}

void main() {
  Car car = Car('Toyota', 2022);
  print('Brand: ${car.brand}, Year: ${car.year}');
}
```

### 3. Constructors (Hàm tạo)

Constr`uctors là các phương thức đặc biệt dùng để khởi tạo đối tượng. Dart hỗ trợ nhiều loại constructors:

#### a. Default Constructor
`
- Là `constructor` mặc định được tạo nếu không khai báo constructor nào.

- Nếu tự khai báo constructor, Dart sẽ không cung cấp default constructor nữa.

```
class Animal {
  String name;
  int age;

  Animal(this.name, this.age); // Constructor
}

void main() {
  Animal cat = Animal('Kitty', 2);
  print('${cat.name} is ${cat.age} years old.');
}
```


#### b. Named Constructor

- Dùng để tạo các `constructor` khác nhau trong cùng một class.


```dart
class Rectangle {
  double width;
  double height;

  Rectangle(this.width, this.height); // Constructor chính

  Rectangle.square(double size) // Named constructor
      : width = size,
        height = size;

  double get area => width * height;
}

void main() {
  Rectangle square = Rectangle.square(5);
  print('Square area: ${square.area}');
}
```

#### c. Redirecting Constructor

- `Constructor` này gọi một constructor khác trong cùng một class.

```dart
class Point {
  double x, y;

  Point(this.x, this.y);

  Point.origin() : this(0, 0); // Redirecting constructor
}

void main() {
  Point origin = Point.origin();
  print('Point: (${origin.x}, ${origin.y})');
}
```
#### d. Factory Constructor


Dùng để kiểm soát việc tạo đối tượng, đặc biệt trong trường hợp muốn tái sử dụng một đối tượng thay vì tạo mới.

```dart
class Logger {
  static final Logger _instance = Logger._internal();

  factory Logger() {
    return _instance; // Trả về đối tượng đã được tạo sẵn
  }

  Logger._internal(); // Private constructor
}

void main() {
  var logger1 = Logger();
  var logger2 = Logger();

  print(identical(logger1, logger2)); // true
}
```
### 4. Methods (Phương thức)

- Phương thức là các hàm được định nghĩa bên trong class.
- Phương thức có thể thao tác trên các thuộc tính của đối tượng.

```dart
class Circle {
  double radius;

  Circle(this.radius);

  double get area => 3.14 * radius * radius; // Getter
  double get circumference => 2 * 3.14 * radius;
}

void main() {
  Circle c = Circle(5);
  print('Area: ${c.area}');
  print('Circumference: ${c.circumference}');
}
```

#### Getter và Setter

- **Getter:** Dùng để truy cập giá trị của thuộc tính.
- **Setter:** Dùng để gán giá trị cho thuộc tính.

```dart
class Rectangle {
  double _width = 0;
  double _height = 0;

  double get width => _width;
  set width(double value) {
    if (value > 0) _width = value;
  }

  double get height => _height;
  set height(double value) {
    if (value > 0) _height = value;
  }

  double get area => _width * _height;
}

void main() {
  Rectangle r = Rectangle();
  r.width = 10;
  r.height = 5;
  print('Area: ${r.area}');
}
```

### 5. Inheritance (Kế thừa)

- Dùng từ khóa `extends` để kế thừa một class.
- Class con (subclass) thừa hưởng tất cả các thuộc tính và phương thức của class cha (superclass).

```dart
class Animal {
  void makeSound() {
    print('Some generic sound');
  }
}

class Dog extends Animal {
  @override
  void makeSound() {
    print('Woof!');
  }
}

void main() {
  Dog dog = Dog();
  dog.makeSound(); // Woof!
}
```

### 6. Abstract Classes

- `Abstract class` không thể được khởi tạo.
- Dùng làm bản thiết kế để các class con triển khai.

```dart
abstract class Vehicle {
  void startEngine();
}

class Car extends Vehicle {
  @override
  void startEngine() {
    print('Car engine started');
  }
}

void main() {
  Car car = Car();
  car.startEngine();
}
```

### 7. Extension Methods

- **Extension methods** cho phép bạn thêm các **phương thức** hoặc **thuộc tính** vào các class hiện có mà không cần sửa đổi hoặc kế thừa chúng.

- Chúng rất hữu ích để mở rộng các kiểu dữ liệu chuẩn hoặc class từ thư viện bên thứ ba.

**Cú pháp cơ bản**

```dart
extension ExtensionName on Type {
  // Phương thức mở rộng
  ReturnType methodName(Parameters) {
    // Nội dung
  }
}
```

*Thêm phương thức `toInt` vào `String`:*

```dart
extension StringParsing on String {
  int toInt() => int.parse(this);
}

void main() {
  print('123'.toInt()); // 123
}
```

*Mở rộng List<T> để thêm một getter average:*

```dart
extension ListAverage on List<int> {
  double get average => isEmpty ? 0 : reduce((a, b) => a + b) / length;
}

void main() {
  print([1, 2, 3].average); // 2.0
}
```

## VI. With, Mixin

`Mixins` là cách để định nghĩa và `tái sử dụng` code trên nhiều hệ thống phân cấp lớp khác nhau. 

Mục đích của `mixins` là cung cấp các phương thức và thuộc tính cho các lớp mà không cần `kế thừa`.

### 1.  Cách sử dụng Mixins

- Để sử dụng một `mixin`, bạn dùng từ khóa `with`, theo sau là một hoặc nhiều tên mixin.

```dart
class Musician extends Performer with Musical {
  // Lớp này kế thừa từ Performer và sử dụng mixin Musical.
}

class Maestro extends Person with Musical, Aggressive, Demented {
  Maestro(String maestroName) {
    name = maestroName;
    canConduct = true;
  }
}
```

### 2. Định nghĩa một Mixin

Để định nghĩa một mixin, sử dụng từ khóa `mixin`. Lưu ý rằng:

- ``Mixins`` không thể có `extends`.
- Mixins không được khai báo `constructor` (generative constructor).

```dart
mixin Musical {
  bool canPlayPiano = false;
  bool canCompose = false;
  bool canConduct = false;

  void entertainMe() {
    if (canPlayPiano) {
      print('Playing piano');
    } else if (canConduct) {
      print('Waving hands');
    } else {
      print('Humming to self');
    }
  }
}

void main() {
  var maestro = Maestro('Beethoven');
  maestro.entertainMe();
}

class Maestro with Musical {
  final String name;
  Maestro(this.name) {
    canConduct = true;
  }
}
```
### 3. Đảm bảo các thành viên cần thiết trong mixin

**1. Định nghĩa phương thức trừu tượng trong mixin**

Nếu `mixin` cần gọi các phương thức mà nó không thể tự định nghĩa, bạn có thể khai báo phương thức trừu tượng trong `mixin`. Điều này buộc các lớp sử dụng `mixin` phải định nghĩa các thành viên cần thiết.

```dart
mixin Musician {
  void playInstrument(String instrumentName); // Phương thức trừu tượng.

  void playPiano() {
    playInstrument('Piano');
  }
  void playFlute() {
    playInstrument('Flute');
  }
}

class Virtuoso with Musician {
  @override
  void playInstrument(String instrumentName) {
    print('Plays the $instrumentName beautifully');
  }
}

void main() {
  var artist = Virtuoso();
  artist.playPiano(); // Output: Plays the Piano beautifully
  artist.playFlute(); // Output: Plays the Flute beautifully
}
```


**2. Truy cập trạng thái của lớp con từ mixin**

Bạn có thể định nghĩa các `getter` trừu tượng trong `mixin` để truy cập trạng thái của lớp con.

```dart
mixin NameIdentity {
  String get name; // Getter trừu tượng.

  int get hashCode => name.hashCode;
  bool operator ==(other) => other is NameIdentity && name == other.name;
}

class Person with NameIdentity {
  final String name;

  Person(this.name);
}

void main() {
  var person1 = Person('Alice');
  var person2 = Person('Alice');
  print(person1 == person2); // Output: true
}
```

**3. Triển khai interface trong mixin**

`Mixin` có thể triển khai một `interface`, buộc các lớp con phải định nghĩa các thành viên yêu cầu bởi `interface`.

```dart
abstract interface class Tuner {
  void tuneInstrument();
}

mixin Guitarist implements Tuner {
  void playSong() {
    tuneInstrument();
    print('Strums guitar majestically.');
  }
}

class PunkRocker with Guitarist {
  @override
  void tuneInstrument() {
    print("Don't bother, being out of tune is punk rock.");
  }
}

void main() {
  var rocker = PunkRocker();
  rocker.playSong();
  // Output:
  // Don't bother, being out of tune is punk rock.
  // Strums guitar majestically.
}
```

### 4. Sử dụng từ khóa `on` để giới hạn lớp cha

Từ khóa `on` trong `mixin` chỉ định rằng `mixin` chỉ có thể được áp dụng cho các lớp kế thừa từ một loại cụ thể. 

Điều này đảm bảo rằng các phương thức `super` trong mixin được định nghĩa đúng.

```dart
class Musician {
  void musicianMethod() {
    print('Playing music!');
  }
}

mixin MusicalPerformer on Musician {
  void performerMethod() {
    print('Performing music!');
    super.musicianMethod();
  }
}

class SingerDancer extends Musician with MusicalPerformer {}

void main() {
  var performer = SingerDancer();
  performer.performerMethod();
  // Output:
  // Performing music!
  // Playing music!
}
```

***Tóm tắt***

1. **Mixins** cung cấp các thành viên mà không cần kế thừa.
2. Dùng từ khóa `with` để áp dụng mixin cho một lớp.
3. Mixin không có `extends` và không có constructor sinh.
4. Có thể khai báo phương thức/thuộc tính trừu tượng trong mixin để buộc các lớp con phải định nghĩa chúng.
5. Từ khóa `on` giới hạn mixin chỉ áp dụng cho các lớp kế thừa từ một lớp cụ thể.

***Kế thừa từ nhiều mixin***

```dart
mixin Musical {
  bool canPlayPiano = false;
  bool canCompose = false;
  bool canConduct = false;

  void entertainMe() {
    if (canPlayPiano) {
      print('Playing piano');
    } else if (canCompose) {
      print('Composing music');
    } else if (canConduct) {
      print('Conducting the orchestra');
    } else {
      print('Humming to self');
    }
  }
}

mixin Aggressive {
  void attack() {
    print('Attacking aggressively!');
  }

  void defend() {
    print('Defending with aggression!');
  }
}

mixin Demented {
  void think() {
    print('Thinking... in a demented way!');
  }

  void laugh() {
    print('Laughing maniacally!');
  }
}

class Maestro with Musical, Aggressive, Demented {
  final String name;

  Maestro(this.name) {
    canConduct = true;
  }

  void introduce() {
    print('I am Maestro $name.');
  }
}

void main() {
  var maestro = Maestro('Ludwig van Beethoven');
  maestro.introduce(); // Output: I am Maestro Ludwig van Beethoven.
  maestro.entertainMe(); // Output: Conducting the orchestra
  maestro.attack(); // Output: Attacking aggressively!
  maestro.defend(); // Output: Defending with aggression!
  maestro.think(); // Output: Thinking... in a demented way!
  maestro.laugh(); // Output: Laughing maniacally!
}
```

### 5. class, mixin, or mixin class?

***Khai báo mixin class yêu cầu phiên bản ngôn ngữ Dart tối thiểu là 3.0.***

**Khác biệt giữa `Class`, `Mixin` và `Mixin Class`**

1. **Mixin Declaration**:
   - Định nghĩa một *mixin*.
   - Chỉ có thể được sử dụng với từ khóa `with`.

2. **Class Declaration**:
   - Định nghĩa một *class* thông thường.
   - Có thể được sử dụng với từ khóa `extends`.

3. **Mixin Class Declaration**:
   - Định nghĩa một *mixin class*, có thể được sử dụng như:
     - Một *class* thông thường (bằng từ khóa `extends`).
     - Một *mixin* (bằng từ khóa `with`).

*Ví dụ: Mixin Class*

```dart
mixin class Musician {
  // Đây là một mixin class
  void playInstrument(String instrument) {
    print('Playing $instrument');
  }
}

// Sử dụng Musician như một mixin
class Novice with Musician {
  void learn() {
    print('Learning music...');
  }
}

// Sử dụng Musician như một class
class Expert extends Musician {
  void perform() {
    print('Performing on stage...');
  }
}
```

**Hạn chế của Mixin Class**

1. Không thể có mệnh đề `extends` hoặc `with`:
- **Mixin class không được kế thừa từ một lớp khác.**
- Ví dụ không hợp lệ:
  ```dart
  mixin class Invalid extends SomeOtherClass { // Không hợp lệ
    // ...
  }

2. Không thể sử dụng `on` clause:

- Trong khi `mixin` có thể giới hạn lớp cha với từ khóa `on`, `mixin class` không được làm điều này.

Ví dụ không hợp lệ:
```dart
mixin class Invalid on SomeBaseClass { // Không hợp lệ
  // ...
}
```

## BTVN.

### Bài 1:

| **Khía cạnh**         | **Future**                                                              | **Stream**                                                     |
|------------------------|------------------------------------------------------------------------|----------------------------------------------------------------|
| **Định nghĩa**         | Đại diện cho một giá trị hoặc lỗi trong tương lai                      | Đại diện cho một chuỗi các giá trị hoặc lỗi theo thời gian     |
| **Kết quả**           | Một giá trị hoặc lỗi duy nhất                                          | Chuỗi các giá trị hoặc lỗi                                      |
| **Ngữ cảnh sử dụng**    | Khi chỉ có một kết quả cần xử lý                                      | Khi cần xử lý nhiều giá trị trong khoảng thời gian dài         |
| **Ví dụ phổ biến**     | Kết quả của một cuộc gọi HTTP                                         | Sự kiện nhấn nút, dữ liệu đọc từ tệp, hoặc luồng mạng          |
| **Cách lắng nghe**     | `then`, `catchError`, `await`                                        | `listen`, `await for`                                          |
| **Tính năng phát lại** | Không có (single-use)                                                | Có (Broadcast Stream có thể sử dụng lại)                      |
| **Kiểm soát dữ liệu**  | Không thể kiểm soát luồng dữ liệu sau khi Future đã hoàn thành       | Có thể quản lý luồng dữ liệu với `StreamController`           |
| **Đồng bộ hóa**         | Dễ dàng hơn, thường được dùng cho tác vụ bất đồng bộ đơn lẻ         | Phức tạp hơn, thường được dùng cho chuỗi tác vụ bất đồng bộ   |


## Bài 2

### Tìm hiểu thêm về implement và extend.

#### 1. extend (Kế thừa lớp)
- **Mục đích:** Dùng để kế thừa tất cả các thuộc tính và phương thức từ một lớp cha (superclass).

- Cách hoạt động:

  - Khi một lớp kế thừa từ một lớp khác, lớp con sẽ có quyền truy cập vào tất cả các thành viên (thuộc tính và phương thức) của lớp cha.
  - Lớp con có thể ghi đè (override) các phương thức của lớp cha nếu muốn.
  - Một lớp chỉ có thể kế thừa từ một lớp cha duy nhất.

```dart
class Animal {
  void speak() {
    print("Animal is speaking");
  }
}

class Dog extends Animal {
  @override
  void speak() {
    print("Dog is barking");
  }
}

void main() {
  var dog = Dog();
  dog.speak();  // Output: Dog is barking
}
```
Lưu ý:

- Kế thừa cho phép lớp con nhận được tất cả các hành vi và trạng thái của lớp cha, nhưng không thể kế thừa từ nhiều lớp cha (chỉ kế thừa một lớp cha).

- Phương thức của lớp cha có thể được ghi đè (override) trong lớp con nếu cần.

#### 2. implement (Thực thi Interface)

- **Mục đích:** Dùng để đảm bảo rằng một lớp sẽ triển khai tất cả các phương thức đã khai báo trong interface.

- Cách hoạt động:

  - `implement` yêu cầu lớp thực thi tất cả các phương thức và thuộc tính của interface mà nó implement.
  - Lớp có thể `implement` nhiều interface, điều này giúp lớp đó tuân theo nhiều giao diện khác nhau.


```dart
// Định nghĩa interface đầu tiên
abstract class Speakable {
  void speak();  // Phương thức yêu cầu lớp implement phải có
}

// Định nghĩa interface thứ hai
abstract class Walkable {
  void walk();  // Phương thức yêu cầu lớp implement phải có
}

// Lớp Person implement cả hai interface: Speakable và Walkable
class Person implements Speakable, Walkable {
  String name;

  Person(this.name);

  // Implement phương thức từ Speakable
  @override
  void speak() {
    print("$name is speaking.");
  }

  // Implement phương thức từ Walkable
  @override
  void walk() {
    print("$name is walking.");
  }
}

void main() {
  var person = Person("John");

  // Gọi các phương thức từ các interface
  person.speak();  // Output: John is speaking.
  person.walk();   // Output: John is walking.
}
```

Lưu ý:

- Một lớp có thể **implement nhiều interface**, điều này cho phép lớp đó có thể đảm nhận nhiều hành vi khác nhau mà các interface quy định.
- Một khi một lớp implement một interface, lớp đó bắt buộc phải cung cấp triển khai cho tất cả các phương thức của interface.

#### 3. Kết hợp extends và implements

Bạn cũng có thể sử dụng cả `extends` và `implements` trong cùng một lớp. Lớp có thể kế thừa từ một lớp cha và implement nhiều giao diện.

```dart
abstract class Animal {
  void eat();
}

class Barkable {
  void bark() {
    print("Barking");
  }
}

class Dog extends Barkable implements Animal {
  @override
  void eat() {
    print("Dog is eating");
  }
}

void main() {
  Dog dog = Dog();
  dog.eat();   // Output: Dog is eating
  dog.bark();  // Output: Barking
}
```

**Khi nào nên dùng extends và implements?**

- `extends`: cùng cấp (class-class; interface-interface)

- Dùng `extends` khi:

  - Bạn muốn tái sử dụng hành vi của lớp cha.
  - Cần xây dựng mối quan hệ kế thừa giữa các lớp (is-a relationship).

- Dùng `implements` khi:

  - Bạn muốn đảm bảo một lớp phải tuân theo một tập hợp phương thức hoặc thuộc tính nhất định.
  - Bạn cần hỗ trợ đa kế thừa giao diện.


| **Tính năng**          | **`extend`** (Kế thừa)                 | **`implement`** (Thực thi Interface)         | **`with`** (Mixin)                       |
|------------------------|---------------------------------------|---------------------------------------------|-----------------------------------------|
| **Mục đích**           | Kế thừa hành vi và trạng thái từ lớp cha. | Đảm bảo lớp thực thi tất cả phương thức trong interface. | Chia sẻ hành vi giữa các lớp mà không phải kế thừa. |
| **Số lượng**           | Chỉ có thể kế thừa từ **một lớp cha**.  | Có thể implement **nhiều interface**.       | Có thể sử dụng **nhiều mixin**.          |
| **Triển khai phương thức** | Phương thức của lớp cha có thể được ghi đè (override). | Lớp phải cung cấp triển khai cho tất cả các phương thức của interface. | Mixin cung cấp các phương thức mà lớp có thể sử dụng mà không cần ghi đè. |
| **Sử dụng**            | Phù hợp khi cần tạo ra một mối quan hệ cha-con rõ ràng. | Phù hợp khi muốn tạo ra các giao diện với hành vi bắt buộc. | Phù hợp khi muốn chia sẻ hành vi mà không cần kế thừa phức tạp. |
| **Vấn đề kế thừa đa tầng** | Không hỗ trợ kế thừa đa tầng (một lớp chỉ kế thừa từ một lớp duy nhất). | Hỗ trợ implement nhiều interface cùng lúc. | Hỗ trợ sử dụng nhiều mixin. |
