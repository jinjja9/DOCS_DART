import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'ProductProvider.dart';
import 'product_grid.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProductProvider(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ProductGrid(),
      ),
    );
  }
}
