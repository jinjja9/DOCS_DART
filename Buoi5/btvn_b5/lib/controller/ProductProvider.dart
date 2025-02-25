import 'package:flutter/material.dart';

import '../model/Product.dart';

class ProductProvider with ChangeNotifier {
  final List<Product> _products = [];
  List<Product> _displayedProducts = [];

  List<Product> get displayedProducts => _displayedProducts;

  void addProduct(Product product) {
    _products.insert(0, product);
    _displayedProducts = List.from(_products);
    notifyListeners();
    _loadImage(product);
  }

  void deleteProduct(Product product) {
    _products.remove(product);
    _displayedProducts = List.from(_products);
    notifyListeners();
  }

  Future<void> _loadImage(Product product) async {
    await Future.delayed(const Duration(seconds: 1));
    product.isImageLoading = false;
    notifyListeners();
  }

  void searchProducts(String query) {
    if (query.isEmpty) {
      _displayedProducts = List.from(_products);
    } else {
      _displayedProducts = _products
          .where((product) =>
              product.name.toLowerCase().contains(query.toLowerCase()))
          .toList();
    }
    notifyListeners();
  }
}
