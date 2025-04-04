# Share preference && sqlite, hive, floor,...

## I. SharedPreferences

[SharedPreferences](https://techmaster.vn/posts/37841/flutter-su-dung-sharedpreferences)

### 1. SharedPreferences là gì?

`SharedPreferences` là một cách để lưu trữ dữ liệu dưới dạng **key - value** trong ứng dụng Android và iOS.

**Tại sao nên sử dụng SharedPreferences trong Flutter?**

- `SharedPreferences` là một cách dễ dàng để lưu trữ và truy xuất dữ liệu nhỏ trên thiết bị của người dùng.
- Dữ liệu này tồn tại ngay cả khi ứng dụng bị đóng và khởi động lại
- `SharedPreferences` là một lựa chọn tuyệt vời để quản lý dữ liệu nhẹ vì nó cung cấp một hệ thống lưu trữ **key - value** đơn giản.

**Tại sao không sử dụng SQLite để lưu trữ giá trị nhỏ?**

- `SQLite` là một cơ sở dữ liệu quan hệ mạnh mẽ, nhưng nó không phải là lựa chọn tốt nhất để lưu trữ dữ liệu nhỏ. Để sử dụng `SQLite`, bạn cần viết mã và các lớp hỗ trợ dài dòng.

- `SharedPreferences` cho phép bạn đọc và viết cặp khóa-giá trị chỉ trong vài dòng mã. Tuy nhiên, `SharedPreferences` không phải là giải pháp để lưu trữ dữ liệu quan hệ phức tạp.

### 2. Cài đặt

Mở file `pubspec.yaml` của dự án và thêm `shared_preferences` vào mục `dependencies`:


```dart
dependencies:
  flutter:
    sdk: flutter
  shared_preferences: ^2.0.15  
```


```dart
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  void initState() {
    super.initState();
    _loadCounter();
  }

  void _loadCounter() async {
    final counterData = await SharedPreferences.getInstance();
    setState(() {
      _counter = counterData.getInt('counter') ?? 0;
    });
  }

  void _incrementCounter() async {
    final counterData = await SharedPreferences.getInstance();
    setState(() {
      _counter = (counterData.getInt('counter') ?? 0) + 1;
      counterData.setInt('counter', _counter);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
```

## II. SQLite 

>android : room
>Flutter : sqlcool, sqflite, floor.... 

[sqlite](https://200lab.io/blog/su-dung-sqlite-trong-flutter?srsltid=AfmBOoq-rfp5fqB0ytTdEBVGiwlZcx4uv0G-qo-IvD6he_1yJIiSatgQ)

`sqflite` là một thư viện phổ biến và mạnh mẽ trong Flutter dùng để lưu trữ dữ liệu cục bộ trong ứng dụng dưới dạng cơ sở dữ liệu quan hệ SQLite. SQLite là một hệ quản trị cơ sở dữ liệu quan hệ nhẹ và không yêu cầu server, rất thích hợp để sử dụng trong các ứng dụng di động.

### Lý do sử dụng sqflite trong Flutter:

- `Đơn giản và nhẹ`: SQLite là một cơ sở dữ liệu nhúng không yêu cầu server, giúp lưu trữ dữ liệu cục bộ với hiệu suất nhanh và hiệu quả.
- `Quản lý dữ liệu quan hệ`: Dễ dàng sử dụng các bảng, khóa chính, và các quan hệ trong dữ liệu.
- `Hỗ trợ đầy đủ tính năng SQL:` SQLite hỗ trợ các tính năng SQL cơ bản như SELECT, INSERT, UPDATE, DELETE, JOIN, v.v.
- `Dễ dàng tích hợp với Flutter`: sqflite là một thư viện Flutter chính thức và dễ dàng sử dụng.

### Các tính năng chính của sqflite:

- `Lưu trữ dữ liệu quan hệ`: Cho phép bạn tạo các bảng, chỉ mục, khóa chính và các quan hệ giữa bảng.
- `Truy vấn dữ liệu bằng SQL`: Sử dụng cú pháp SQL để thao tác với cơ sở dữ liệu.
- `Tích hợp với Flutter`: Cung cấp API dễ dàng để thực hiện các thao tác cơ bản với cơ sở dữ liệu.
- `Hỗ trợ đồng bộ và bất đồng bộ`: sqflite hỗ trợ cả đồng bộ và bất đồng bộ để bạn có thể thực hiện các thao tác với cơ sở dữ liệu một cách linh hoạt.

### cài đặt
```
dependencies:
  sqflite: ^2.0.0
  path_provider: ^2.0.2
````

## III. hive


### 1. Khái niệm

[hive](https://viblo.asia/p/hive-la-gi-cach-dung-hive-trong-flutter-nhu-the-nao-ORNZqDOMK0n)

`Hive` là một dạng lưu trữ local database, Hive được tổ chức dưới dạng các Box. Mỗi Box có thể coi là tương ứng với một Table của SQL nhưng là lưu trữ dữ liệu dạng không có cấu trúc (NoSQL ) tức là dạng `< key, value > `và có thể lưu trữ bất cứ kiểu dữ liệu nào.

### 2. Read, Write, Delete trong Hive

####  Read trong Hive

Vì các Box trong Hive sử dụng kiểu truy vấn <key, value> nên chỉ cần gọi key thì có thể get ra dữ liệu tương ứng:

```dart
// Mở Box people.
var box = Hive.box('people');

// get giá trị theo key là name.
String name = box.get('name');

//get giá trị theo key là birthday.
DateTime birthday = box.get('birthday');
```

Nếu khóa không tồn tại, nó sẽ trả về null. Theo tùy chọn, bạn có thể chỉ định defaultValue được trả về trong trường hợp khóa không tồn tại.

```dart
double height = box.get('randomKey', defaultValue: 17.5);
```

#### Write trong Hive

Write vào Box giống như viết vào Map<key, value>. Tất cả các key phải là chuỗi ASCII có độ dài tối đa 255 ký tự hoặc số nguyên 32 bit không dấu.

```dart
var box = Hive.box('myBox');

box.put('name', 'Paul');

box.put('friends', ['Dave', 'Simon', 'Lisa']);

box.put(123, 'test');

box.putAll({'key1': 'value1', 42: 'life'})
```


#### Delete trong Hive
Hive cung cấp cho ta các phương thức để thực viện việc Delete.

```dart
contactsBox.deleteAt(index);
contactsBox.deleteAll(interible);
```

#### Add thư viện Hive


```dart
 dependencies:
  flutter:
    sdk: flutter
  cupertino_icons: ^0.1.3
  hive: ^1.4.1+1
  hive_flutter: ^0.3.0+2
  path_provider: ^1.6.5

dev_dependencies:
  hive_generator: ^0.7.0+2
  build_runner: ^1.10.0
  flutter_test:
    sdk: flutter

dependency_overrides:
  quiver: 2.1.3
```



## IV Floor

[floor](https://viblo.asia/p/flutter-sqlite-database-4dbZN1rkKYM)

### 1. Khái niệm

- `Floor` giúp thao tác với cơ sở dữ liệu SQLite trong Flutter thông qua các đối tượng Dart thay vì phải viết các câu lệnh SQL thủ công. 

- Thư viện này tích hợp `ORM`(Object-Relational Mapping), giúp bạn dễ dàng thực hiện các phép toán như thêm, sửa, xóa và truy vấn dữ liệu trong cơ sở dữ liệu mà không cần phải lo lắng về các chi tiết phức tạp của SQL.



### 2. Sử dụng

Add dependencies cần thiết vào file pubspec.yaml

```
dependencies:
  flutter:
    sdk: flutter
  floor: ^1.4.2

dev_dependencies:
  floor_generator: ^1.4.2
  build_runner: ^2.1.2
```

```
flutter pub run build_runner build
```

### 3. Cấu trúc của Floor

#### a. Entity

`Entity` trong Floor đại diện cho một bảng trong cơ sở dữ liệu. Tạo một lớp Dart và đánh dấu nó bằng annotation `@entity` để xác định rằng lớp này sẽ tương ứng với một bảng trong cơ sở dữ liệu.

```dart
import 'package:floor/floor.dart';

@Entity(tableName: 'user')
class User {
  @primaryKey
  final int id;
  final String name;

  User(this.id, this.name);
}
```

#### b. Dao (Data Access Object)

Dao là các lớp Dart chứa các phương thức giúp truy xuất và thao tác với dữ liệu trong cơ sở dữ liệu. Dao sử dụng các annotation như `@insert`, `@update`, `@delete`, hoặc `@query `để thực hiện các thao tác cơ sở dữ liệu.

```dart
@dao
abstract class UserDao {
  @insert
  Future<void> insertUser(User user);

  @Query('SELECT * FROM user')
  Future<List<User>> findAllUsers();
}
```
- Dao này có hai phương thức: một để thêm người dùng vào cơ sở dữ liệu và một để lấy tất cả người dùng.

#### c. Database

Cơ sở dữ liệu trong `Floor` là lớp kế thừa từ `FloorDatabase`. Lớp này cần phải chứa các phương thức để truy cập các Dao của bạn.

```dart
@Database(version: 1, entities: [User])
abstract class AppDatabase extends FloorDatabase {
  UserDao get userDao;
}
```

### 4. Sử dụng Floor trong Ứng Dụng

#### a. Khởi tạo cơ sở dữ liệu

Sau khi định nghĩa các entity và dao, bạn có thể tạo một cơ sở dữ liệu và truy cập dao thông qua mã sau:

```dart
final database = await $FloorAppDatabase.databaseBuilder('app_database.db').build();
final userDao = database.userDao;
```
#### b. Thao tác với cơ sở dữ liệu

Khi đã có một đối tượng userDao, bạn có thể thực hiện các thao tác cơ bản như chèn, truy vấn dữ liệu:

```dart
// Thêm người dùng
await userDao.insertUser(User(1, 'John Doe'));

// Lấy tất cả người dùng
List<User> users = await userDao.findAllUsers();
```