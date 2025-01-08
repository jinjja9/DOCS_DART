## I.SingleScrollView

- Trong `Flutter`, `SingleChildScrollView` là một widget cho phép bạn tạo ra một vùng cuộn (scrollable) cho một widget con duy nhất. 

### Cấu trúc cơ bản của `SingleChildScrollView`
```dart
SingleChildScrollView(
  child: YourChildWidget(),
)
```
- `child`: Đây là widget con duy nhất mà bạn muốn hiển thị và cuộn được. Nó có thể là bất kỳ widget nào: Column, Container, Text, v.v.

### Lợi ích của `SingleChildScrollView`

- **Cuộn dọc**: Nếu nội dung của bạn vượt quá chiều cao của màn hình, nó sẽ tự động cho phép cuộn.

- **Tối ưu**: Dễ dàng sử dụng và rất tiện lợi cho các trường hợp có một phần nội dung duy nhất cần cuộn.

- **Đơn giản**: Được sử dụng khi bạn không cần các tính năng phức tạp như cuộn ngang, nhiều phần tử, hay hiệu ứng cuộn đặc biệt.


### Một số thuộc tính của SingleChildScrollView

- `scrollDirection`: Tham số này cho phép bạn điều chỉnh hướng cuộn. Mặc định là `Axis.vertical` (cuộn dọc), nhưng bạn có thể thay đổi thành `Axis.horizontal` (cuộn ngang).
- `reverse`: Chỉ định xem liệu cuộn có bắt đầu từ dưới lên (ngược với mặc định là từ trên xuống).

- `padding`: Cho phép thêm khoảng cách padding cho vùng cuộn.
- `controller`: Bạn có thể cung cấp một ScrollController để điều khiển vị trí cuộn.
- `keyboardDismissBehavior`: Cung cấp cách thức xử lý khi bàn phím xuất hiện (tùy chọn manual hoặc onDrag).

**dọc**

```dart
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("SingleChildScrollView Example")),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),  // Thêm padding xung quanh nội dung
          child: Column(
            children: [
              Text(
                'Flutter is an open-source UI software development kit created by Google.',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 20),  // Khoảng cách giữa các phần tử
              Text(
                'It is used for developing applications for Android, iOS, Linux, macOS, Windows, Google Fuchsia, and the web.',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 20),
              Text(
                'Flutter allows developers to create natively compiled applications with a single codebase.',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 20),
              Container(
                color: Colors.blueAccent,
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Flutter supports fast development with its hot reload feature, allowing developers to quickly iterate and debug their apps.',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
              SizedBox(height: 20),
              Container(
                color: Colors.orangeAccent,
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'The Flutter framework is built using the Dart programming language, which is also developed by Google.',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Flutter has rapidly gained popularity due to its expressive UI, strong community support, and extensive documentation.',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 20),
              Text(
                'It is one of the most popular frameworks for cross-platform mobile development.',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
```

**Ngang**

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("SingleChildScrollView Example")),
        body: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(width: 200, color: Colors.red),
              Container(width: 200, color: Colors.green),
              Container(width: 200, color: Colors.blue),
              // Thêm nhiều widget con theo ý muốn
            ],
          ),
        ), // Đóng `SingleChildScrollView`
      ), // Đóng `Scaffold`
    ); // Đóng `MaterialApp`
  }
}
```

## II. ListView

- Trong Flutter, `ListView` là một widget được sử dụng để hiển thị danh sách các phần tử có thể cuộn.

- `ListView` có thể cuộn dọc hoặc ngang

[Các loại ListView](https://viblo.asia/p/flutter-listview-va-scrollphysics-mot-cai-nhin-chi-tiet-3P0lP07mlox)

- ListView
- ListView.builder
- ListView.separated
- ListView.custom

### 1. ListView

Một ListView chứa các item con và có thể cuộn được :

```
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("ListView cơ bản")),
        body: ListView(
          children: [
            ListTile(title: Text('Item 1')),
            ListTile(title: Text('Item 2')),
            ListTile(title: Text('Item 3')),
            ListTile(title: Text('Item 4')),
            ListTile(title: Text('Item 5')),
          ],
        ),
      ),
    );
  }
}
```

### 2.ListView.builder

- Khi bạn có một danh sách động hoặc không biết trước số lượng phần tử, bạn có thể sử dụng `ListView.builder`.

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("ListView.builder")),
        body: ListView.builder(
          itemCount: 20, // Số lượng mục trong danh sách
          itemBuilder: (context, index) {
            return ListTile(
              leading: Icon(Icons.star),
              title: Text('Item ${index + 1}'),
              subtitle: Text('This is item number ${index + 1}'),
            );
          },
        ),
      ),
    );
  }
}
```

### 3. ListView.separated

- Sử dụng khi bạn muốn thêm các phần tử phân cách (separator) giữa các mục trong danh sách.

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("ListView.separated")),
        body: ListView.separated(
          itemCount: 10, // Số lượng mục trong danh sách
          itemBuilder: (context, index) {
            return ListTile(
              leading: Icon(Icons.access_alarm),
              title: Text('Item ${index + 1}'),
            );
          },
          separatorBuilder: (context, index) {
            return Divider(color: Colors.black); // Phân cách giữa các mục
          },
        ),
      ),
    );
  }
}
```

### 4. ListView.custom

Đây là cách sử dụng `ListView` với một bộ `SliverChildDelegate` tùy chỉnh. Thường được dùng khi bạn muốn tối ưu hoặc kiểm soát danh sách theo cách riêng.

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("ListView.custom")),
        body: ListView.custom(
          childrenDelegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return ListTile(
                leading: Icon(Icons.arrow_forward),
                title: Text('Custom Item ${index + 1}'),
                subtitle: Text('Custom item number ${index + 1}'),
              );
            },
            childCount: 10, // Số lượng mục
          ),
        ),
      ),
    );
  }
}
```

### Kết luận

- **ListView**: Dùng khi bạn có danh sách cố định các mục.

- **ListView.builder**: Dùng khi danh sách có số lượng phần tử động hoặc không xác định trước.

- **ListView.separated**: Dùng khi bạn muốn thêm các phần tử phân cách giữa các mục.

- **ListView.custom**: Dùng khi bạn cần tối ưu hiệu suất và kiểm soát chi tiết hơn đối với các phần tử trong danh sách.

### So sánh ListView và SingleChildScrollView

| **Tiêu chí**         | **ListView**                            | **SingleChildScrollView**              |
|-----------------------|-----------------------------------------|---------------------------------------|
| **Chức năng**        | Hiển thị danh sách các phần tử cuộn.    | Cuộn một widget con duy nhất.         |
| **Hiệu suất**        | Tối ưu cho danh sách lớn (lazy-loading).| Kém hiệu suất khi danh sách lớn.      |
| **Số lượng phần tử**  | Phù hợp cho danh sách lớn, động.        | Phù hợp cho danh sách nhỏ, cố định.   |
| **ScrollDirection**  | Hỗ trợ dọc và ngang.                    | Hỗ trợ dọc và ngang.                 |
| **Ứng dụng**         | Danh sách dài: tin nhắn, sản phẩm, v.v. | Nội dung nhỏ cần cuộn: biểu mẫu, cột. |

---

### **Khi nào dùng?**
- **ListView**: Sử dụng cho **danh sách lớn, động**, cần tối ưu hiệu suất.
- **SingleChildScrollView**: Sử dụng cho **danh sách nhỏ, tĩnh** hoặc khi cuộn nội dung không xác định kích thước.

## GridView
`GridView` trong Flutter là một widget cho phép hiển thị các phần tử trong dạng lưới (grid), rất hữu ích khi bạn muốn trình bày nhiều mục trong một không gian có cấu trúc dạng cột và hàng.

### 1. GridView.count

`GridView.count `là loại lưới đơn giản nhất, nơi bạn chỉ cần chỉ định số lượng cột (crossAxisCount) và các phần tử con sẽ tự động được sắp xếp thành các hàng và cột.

**Cấu hình:**

- `crossAxisCount`: Số lượng cột trong lưới.
- `crossAxisSpacing`: Khoảng cách giữa các phần tử theo chiều ngang.
- `mainAxisSpacing`: Khoảng cách giữa các phần tử theo chiều dọc.


```dart
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('GridView.count Example')),
        body: GridView.count(
          crossAxisCount: 3, // Số lượng cột
          crossAxisSpacing: 10, // Khoảng cách ngang giữa các phần tử
          mainAxisSpacing: 10, // Khoảng cách dọc giữa các phần tử
          children: List.generate(100, (index) {
            return Card(
              color: Colors.blueAccent,
              child: Center(
                child:
                    Text('Item $index', style: TextStyle(color: Colors.white)),
              ),
            );
          }),
        ),
      ),
    );
  }
}
```

### 2. GridView.builder

`GridView.builder` sử dụng phương pháp lazy loading, tức là chỉ tải các phần tử khi chúng được hiển thị trên màn hình, giúp tối ưu hóa bộ nhớ khi danh sách phần tử rất dài.

**Cấu hình:**
- `gridDelegate`: Định nghĩa cách thức phân chia lưới, thường sử dụng SliverGridDelegateWithFixedCrossAxisCount.
- `itemCount`: Số lượng phần tử trong danh sách.
- `itemBuilder`: Hàm xây dựng từng phần tử trong lưới

```dart
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('GridView.builder Example')),
        body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,  // 3 cột
            crossAxisSpacing: 10,  // Khoảng cách ngang
            mainAxisSpacing: 10,  // Khoảng cách dọc
          ),
          itemCount: 100,  // Tổng số phần tử
          itemBuilder: (context, index) {
            return Card(
              color: Colors.greenAccent,
              child: Center(
                child: Text('Item $index', style: TextStyle(color: Colors.white)),
              ),
            );
          },
        ),
      ),
    );
  }
}
```

### 3. GridView.extent

`GridView.extent` cho phép bạn xác định độ dài tối đa của mỗi phần tử trong lưới, và Flutter sẽ tự động tính toán số lượng cột sao cho các phần tử không vượt quá độ dài này.

**Cấu hình:**
- `maxCrossAxisExtent:` Độ dài tối đa của mỗi phần tử theo chiều ngang.
- `crossAxisSpacing` và `mainAxisSpacing`: Khoảng cách giữa các phần tử.

```dart
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('GridView.extent Example')),
        body: GridView.extent(
          maxCrossAxisExtent: 200,  // Độ dài tối đa mỗi phần tử
          crossAxisSpacing: 10,  // Khoảng cách ngang giữa các phần tử
          mainAxisSpacing: 10,  // Khoảng cách dọc giữa các phần tử
          children: List.generate(100, (index) {
            return Card(
              color: Colors.pinkAccent,
              child: Center(
                child: Text('Item $index', style: TextStyle(color: Colors.white)),
              ),
            );
          }),
        ),
      ),
    );
  }
}
```

### 4. Tùy chỉnh GridView

Bạn có thể dễ dàng tùy chỉnh các phần tử trong lưới bằng cách sử dụng các widget như `Card`, `Container`, `Text`, hoặc bất kỳ widget nào mà bạn muốn.

```dart
GridView.count(
  crossAxisCount: 3,
  crossAxisSpacing: 10,
  mainAxisSpacing: 10,
  children: List.generate(10, (index) {
    return Container(
      color: Colors.orange,
      child: Center(
        child: Icon(Icons.star, size: 50, color: Colors.white),
      ),
    );
  }),
);
```


- `GridView.count`: Dễ dàng cấu hình số lượng cột, thích hợp cho lưới có kích thước đều nhau.
- `GridView.builder`: Tối ưu hóa cho dữ liệu động hoặc khi có quá nhiều phần tử.
- `GridView.extent:` Dễ dàng cấu hình chiều rộng tối đa của mỗi phần tử, tự động tính toán số lượng cột.


| Thuộc tính           | Mô tả                                                                                                                                      |
| -------------------- | ------------------------------------------------------------------------------------------------------------------------------------------ |
| `gridDelegate`       | Điều khiển cách lưới được phân chia. Có thể sử dụng `SliverGridDelegateWithFixedCrossAxisCount, SliverGridDelegateWithMaxCrossAxisExtent`. |
| `crossAxisCount`     | Số lượng cột trong `GridView` (chỉ sử dụng trong `SliverGridDelegateWithFixedCrossAxisCount`).                                             |
| `maxCrossAxisExtent` | Chiều rộng tối đa của mỗi phần tử trong GridView (chỉ sử dụng trong `SliverGridDelegateWithMaxCrossAxisExtent`).                           |
| `crossAxisSpacing`   | Khoảng cách giữa các phần tử theo chiều ngang.                                                                                             |
| `mainAxisSpacing`    | Khoảng cách giữa các phần tử theo chiều dọc.                                                                                               |
| `children`           | Danh sách các widget con sẽ được hiển thị trong lưới.                                                                                      |
| `itemCount`          | Số lượng phần tử trong `GridView.builder`.                                                                                                 |
| `itemBuilder`        | Hàm callback để tạo phần tử tại mỗi chỉ mục trong `GridView.builder`. 

## Expanded

`Expanded` là một widget trong Flutter giúp bạn phân phối không gian còn lại trong một widget con của một layout có thể cuộn hoặc không thể cuộn, như `Column`, `Row` hoặc `Flex`.

### Cách hoạt động của `Expanded`:

- Khi bạn đặt một widget con bên trong `Expanded`, nó sẽ chiếm một phần không gian còn lại trong bố cục.

- `Expanded` sử dụng thuộc tính `flex` để xác định tỷ lệ không gian mà widget sẽ chiếm trong không gian còn lại. 
- Mặc định, giá trị `flex` là 1, nhưng bạn có thể thay đổi nó để widget này chiếm nhiều hoặc ít không gian hơn so với các widget khác.

### Cấu trúc cơ bản của Expanded:
```dart
Expanded(
  flex: 1,  // Tỷ lệ không gian chiếm (mặc định là 1)
  child: Widget(),  // Widget con sẽ chiếm không gian
)
```

**Thuộc tính của `Expanded`:**

1. **child**:
   - Thuộc tính bắt buộc, là widget con mà bạn muốn mở rộng để chiếm không gian trong bố cục.
   - Loại: `Widget`

2. **flex**:
   - Xác định tỷ lệ không gian mà widget con chiếm. Giá trị mặc định là `1`, nhưng bạn có thể thay đổi nó để phân phối không gian giữa các widget.
   - Loại: `int`
   - **Ví dụ**: Nếu bạn có hai `Expanded` với `flex` là `1` và `2`, widget có `flex: 2` sẽ chiếm gấp đôi không gian so với widget có `flex: 1`.


**Sử dụng Expanded trong Column:**

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Expanded Example")),
        body: Column(
          children: [
            Container(
              color: Colors.red,
              height: 100,
              child: Center(child: Text('Top Container')),
            ),
            Expanded(
              flex: 2,  // Chiếm 2 phần không gian
              child: Container(
                color: Colors.green,
                child: Center(child: Text('Middle Expanded')),
              ),
            ),
            Expanded(
              flex: 1,  // Chiếm 1 phần không gian
              child: Container(
                color: Colors.blue,
                child: Center(child: Text('Bottom Expanded')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
```

- `Column` có ba phần tử con: một `Container` ở trên cùng, một `Expanded` ở giữa, và một Expanded ở dưới.
- `Expanded` với flex: 2 sẽ chiếm không gian gấp đôi so với `Expanded` có flex: 1.
- Các `Expanded` này sẽ phân phối không gian còn lại trong `Column` sau khi Container đầu tiên chiếm không gian cố định.

2. Sử dụng Expanded trong Row:
```dart
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Expanded in Row Example")),
        body: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.red,
                child: Center(child: Text('Left')),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.green,
                child: Center(child: Text('Center')),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.blue,
                child: Center(child: Text('Right')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
```

- `Row` chứa ba phần tử con, mỗi phần tử được bao bọc trong một widget `Expanded`.
- Phần tử "Center" có `flex: 2` và sẽ chiếm gấp đôi không gian so với phần tử "Left" và "Right" có `flex: 1`.

### Các lưu ý khi sử dụng `Expanded`:

- **Sử dụng trong `Column`, `Row`, hoặc `Flex`**:  
  `Expanded` chỉ hoạt động trong các widget layout như `Column`, `Row`, hoặc `Flex` vì chúng có không gian có thể chia sẻ giữa các phần tử con.

- **Không sử dụng trong các widget không có không gian chia sẻ**:  
  Nếu bạn đặt `Expanded` vào các widget như `Stack`, `Container`, hoặc các widget không chia sẻ không gian, Flutter sẽ báo lỗi.

- **Sử dụng `flex` để điều chỉnh tỷ lệ không gian**:  
  Bạn có thể điều chỉnh không gian phân phối bằng cách thay đổi giá trị của thuộc tính `flex` trong `Expanded`.

## Flexible 

### 1. Flexible là gì?

- `Flexible` cho phép một widget con chiếm một phần không gian có sẵn trong bố cục.
- Khác với `Expanded`, `Flexible` có thể điều chỉnh cách widget con xử lý không gian nếu không có đủ chỗ để hiển thị (thông qua thuộc tính fit).
- Dùng `Flexible` khi bạn muốn widget con mở rộng hoặc thu nhỏ nhưng vẫn có thể giới hạn kích thước tối thiểu của nó.

### 2. Thuộc tính chính của Flexible

#### 1. child
- Là widget con được đặt bên trong Flexible.
- Loại: Widget
- Ví dụ:

```dart
Flexible(
  child: Container(color: Colors.red),
)
```

#### 2. flex
- Xác định tỷ lệ không gian mà widget con chiếm trong tổng không gian còn lại.
- Tương tự thuộc tính `flex` trong `Expanded`.
- Giá trị mặc định là `1`.
- Ví dụ:

```dart
Flexible(
  flex: 2,  // Chiếm 2 phần không gian
  child: Container(color: Colors.green),
)
```
####  3. fit

- Xác định cách widget con xử lý không gian có sẵn.
- Loại: `FlexFit`
- Có hai giá trị:
    -   `FlexFit.tight`: Widget sẽ chiếm toàn bộ không gian được phân bổ. (Tương tự như Expanded)
    -   `FlexFit.loose`: Widget sẽ chiếm không gian tối thiểu cần thiết và có thể co lại nếu cần.

```dart
Flexible(
  fit: FlexFit.loose,  // Cho phép widget co lại nếu không đủ chỗ
  child: Container(color: Colors.blue),
)
```


### So sánh Flexible và Expanded

| **Đặc điểm**              | **Flexible**                              | **Expanded**                           |
|---------------------------|-------------------------------------------|----------------------------------------|
| **Mở rộng không gian**    | Có thể tùy chỉnh (loose hoặc tight)       | Luôn mở rộng hết không gian còn lại    |
| **Thuộc tính `fit`**      | Có (`FlexFit.tight` hoặc `FlexFit.loose`) | Luôn là `FlexFit.tight`                |
| **Khi không có đủ chỗ**   | Co lại nếu cần khi dùng `FlexFit.loose`   | Không thể co lại, dẫn đến tràn lỗi UI  |

**Sử dụng Flexible với Column**

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Flexible Example')),
        body: Column(
          children: [
            Container(
              color: Colors.red,
              height: 100, // Phần tử cố định
              child: Center(child: Text('Fixed Header')),
            ),
            Flexible(
              flex: 2,
              fit: FlexFit.tight,
              child: Container(
                color: Colors.green,
                child: Center(child: Text('Flexible Tight')),
              ),
            ),
            Flexible(
              flex: 1,
              fit: FlexFit.loose,
              child: Container(
                color: Colors.blue,
                child: Center(child: Text('Flexible Loose')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
```

- `flex: 2` với `FlexFit.tight`: Widget xanh lá sẽ chiếm gấp đôi không gian so với widget xanh dương.
- `flex: 1` với `FlexFit.loose`: Widget xanh dương chỉ chiếm không gian tối thiểu cần thiết nhưng sẽ mở rộng nếu có dư không gian.

**Sử dụng Flexible với Row**

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Flexible in Row Example')),
        body: Row(
          children: [
            Flexible(
              flex: 1,
              child: Container(
                color: Colors.red,
                child: Center(child: Text('Left')),
              ),
            ),
            Flexible(
              flex: 2,
              fit: FlexFit.tight,
              child: Container(
                color: Colors.green,
                child: Center(child: Text('Center')),
              ),
            ),
            Flexible(
              flex: 1,
              fit: FlexFit.loose,
              child: Container(
                color: Colors.blue,
                child: Center(child: Text('Right')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
```

- `flex: 2`: Widget ở giữa (màu xanh lá) chiếm không gian gấp đôi so với hai widget còn lại.
- `fit: FlexFit.loose`: Widget bên phải chỉ chiếm không gian tối thiểu cần thiết.


### 1. Navigation (Điều hướng)

- `Navigation` trong Flutter được sử dụng để chuyển đổi giữa các màn hình (pages hoặc routes) trong ứng dụng. Flutter sử dụng Navigator để quản lý các routes (đường dẫn) trong một stack.

**Cơ chế Navigator**
- `Navigator.push()`: Đẩy một màn hình mới vào stack.
- `Navigator.pop()`: Loại bỏ màn hình trên cùng khỏi stack.
- `Navigator.pushReplacement()`: Thay thế màn hình hiện tại bằng một màn hình mới

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('First Screen')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondScreen()),
            );
          },
          child: Text('Go to Second Screen'),
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Second Screen')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go Back'),
        ),
      ),
    );
  }
}
```

### 2. Dialog

Dialog là một cửa sổ nhỏ được hiển thị phía trên màn hình hiện tại để hiển thị thông tin hoặc nhận đầu vào từ người dùng.

**Loại Dialog phổ biến:**
- `AlertDialog`: Hộp thoại cảnh báo cơ bản.
- `SimpleDialog`: Hộp thoại đơn giản với danh sách lựa chọn.
- `Custom` Dialog: Hộp thoại tùy chỉnh.

**AlertDialog**

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DialogExample(),
    );
  }
}

class DialogExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dialog Example')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: Text('Alert Dialog'),
                content: Text('This is an alert dialog.'),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context); // Đóng dialog
                    },
                    child: Text('OK'),
                  ),
                ],
              ),
            );
          },
          child: Text('Show Alert Dialog'),
        ),
      ),
    );
  }
}
```

### 3. Bottom Sheet

Bottom Sheet là một widget xuất hiện ở phía dưới màn hình. Có hai loại Bottom Sheet chính:

- `Modal Bottom Sheet`: Hiển thị dưới dạng modal (ngăn chặn thao tác với các màn hình khác cho đến khi đóng).
- `Persistent Bottom Sheet`: Hiển thị cố định ở dưới cùng và không ngăn cản các thao tác với màn hình khác.

**Persistent Bottom Sheet**

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PersistentBottomSheetExample(),
    );
  }
}

class PersistentBottomSheetExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Persistent Bottom Sheet Example')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showBottomSheet(
              (context) => Container(
                height: 200,
                color: Colors.blue,
                child: Center(
                  child: Text('This is a Persistent Bottom Sheet', style: TextStyle(color: Colors.white)),
                ),
              ),
            );
          },
          child: Text('Show Persistent Bottom Sheet'),
        ),
      ),
    );
  }
}
```

| **Thành phần**     | **Mô tả**                                                                                     |
|---------------------|-----------------------------------------------------------------------------------------------|
| **Navigator**       | Dùng để điều hướng giữa các màn hình (push, pop).                                             |
| **Dialog**          | Hộp thoại nhỏ để hiển thị thông báo hoặc yêu cầu nhập liệu (AlertDialog, Custom Dialog).       |
| **Bottom Sheet**    | Hiển thị một bảng điều khiển dưới cùng (Modal hoặc Persistent).                               |


## Toàn tập Flutter navigation

[link](https://viblo.asia/p/toan-tap-flutter-navigation-Az45bDwVZxY#_2-truyen-data-tu-a-push-b-8)


# ĐỌC FLUTTER

[link](https://viblo.asia/p/hoc-flutter-tu-co-ban-den-nang-cao-phan-1-lam-quen-co-nang-flutter-4dbZNJOvZYM?fbclid=IwY2xjawHKVB1leHRuA2FlbQIxMAABHfHfF2JshCLSxh86QvwP1fNvz0izq6iAB1mtD-pSqEZ733O86bqdenOpPA_aem_V9nYF7fkQN_vCfWQpBuvIg)


## Học

### tìm hiểu về context (Phần 3 link trên)


### code btvn

```dart
import 'package:ahihi/dialog_helper.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Name Input Dialog',
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _displayNameController = TextEditingController();
  var title = " ";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomePage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                title,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                DialogHelper.showDialogA(
                  context,
                  (value) {
                    setState(() {
                      title = value.toString();
                    });
                  },
                );
              },
              child: const Text('Open Dialog'),
            ),
          ],
        ),
      ),
    );
  }
}
```
```dart
import 'package:flutter/material.dart';

class DialogHelper {
  static void showDialogA(
    BuildContext context,
    Function(String value) onClose,
  ) {
    TextEditingController nameController = TextEditingController();
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Enter Your Name'),
          content: TextField(
            controller: nameController,
            decoration: const InputDecoration(
              hintText: 'Type your name here',
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop(nameController.text);
              },
            ),
          ],
        );
      },
    ).then((value) {
      if (value != null && value.toString().isNotEmpty) {
        onClose(value.toString());
      }
    });
  }
}
```