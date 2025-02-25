import 'package:flutter/material.dart';

void main() {
  runApp(
    MyCounterWidget(
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: const Text('InheritedWidget Counter App'),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CounterScreen(), // Hiển thị giá trị bộ đếm
              CounterButton(), // Các nút để điều khiển bộ đếm
            ],
          ),
        ),
      ),
    ),
  );
}

// 1. StatefulWidget chứa giá trị bộ đếm và quản lý trạng thái
class MyCounterWidget extends StatefulWidget {
  const MyCounterWidget({super.key, required this.child});

  final Widget child;

  @override
  _MyCounterWidgetState createState() => _MyCounterWidgetState();
}

class _MyCounterWidgetState extends State<MyCounterWidget> {
  int _counter = 0;

  // Phương thức tăng giá trị bộ đếm
  void incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  // Phương thức giảm giá trị bộ đếm
  void decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CounterProvider(
      counter: _counter,
      increment: incrementCounter,
      decrement: decrementCounter,
      child: widget.child,
    );
  }
}

// 2. InheritedWidget để chia sẻ trạng thái bộ đếm và phương thức cập nhật
class CounterProvider extends InheritedWidget {
  const CounterProvider({
    super.key,
    required this.counter,
    required this.increment,
    required this.decrement,
    required super.child,
  });

  final int counter; // Giá trị bộ đếm
  final VoidCallback increment; // Phương thức tăng
  final VoidCallback decrement; // Phương thức giảm

  // Phương thức static để các widget con có thể truy cập dữ liệu từ CounterProvider
  static CounterProvider? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<CounterProvider>();
  }

  @override
  bool updateShouldNotify(CounterProvider oldWidget) {
    // Cập nhật nếu giá trị bộ đếm thay đổi
    return oldWidget.counter != counter;
  }
}

// 3. Widget hiển thị giá trị bộ đếm
class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final counterProvider = CounterProvider.of(context);

    return Center(
      child: Text(
        'Counter: ${counterProvider?.counter ?? 0}', // Hiển thị giá trị bộ đếm
        style: const TextStyle(fontSize: 24),
      ),
    );
  }
}

// 4. Widget hiển thị các nút tăng và giảm giá trị bộ đếm
class CounterButton extends StatelessWidget {
  const CounterButton({super.key});

  @override
  Widget build(BuildContext context) {
    final counterProvider = CounterProvider.of(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: const Icon(Icons.remove),
          onPressed: counterProvider?.decrement, // Gọi phương thức giảm
        ),
        IconButton(
          icon: const Icon(Icons.add),
          onPressed: counterProvider?.increment, // Gọi phương thức tăng
        ),
      ],
    );
  }
}
