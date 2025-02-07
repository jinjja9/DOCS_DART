import 'dart:async';

import 'package:btvn_b5/view/add_product_sheet.dart';
import 'package:flutter/material.dart';

import '../model/Product.dart';

class ProductGrid extends StatefulWidget {
  const ProductGrid({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ProductGridState();
  }
}

class _ProductGridState extends State<ProductGrid> {
  final List<Product> products = [];
  List<Product> displayedProducts = []; // ds hien thi tim kiem
  final TextEditingController searchController = TextEditingController();

  //future load anh
  Future<void> _loadImage(Product product) async {
    await Future.delayed(const Duration(seconds: 1));
    setState(() {
      product.isImageLoading = false; // da load
    });
  }

  void addNewProduct(Product product) {
    setState(() {
      product.isImageLoading = true; //loading
      products.insert(0, product);
      displayedProducts = products;
    });

    _loadImage(product);
  }

  @override
  void initState() {
    super.initState();
    displayedProducts = products; // hien thi toan bo list ban dau
  }

  @override
  void dispose() {
    super.dispose();
  }

  void searchProducts(String query) {
    setState(() {
      if (query.isEmpty) {
        displayedProducts = products;
      } else {
        displayedProducts = products
            .where((product) =>
                product.name.toLowerCase().contains(query.toLowerCase()))
            .toList();
      }
    });
  }

  Future<void> deleteProduct(Product product) async {
    setState(() {
      product.isImageLoading = true;
    });

    await Future.delayed(const Duration(seconds: 1));

    setState(() {
      products.remove(product);
      displayedProducts = products;
      product.isImageLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sales Management'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: searchController,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                labelText: 'Search Products',
                hintText: 'Enter product name',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onChanged: searchProducts,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8.0,
                  childAspectRatio: 1 / 1.25,
                ),
                itemCount: displayedProducts.length,
                itemBuilder: (context, index) {
                  final product = displayedProducts[index];
                  return Card(
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Column(
                        children: [
                          Expanded(
                            child: (() {
                              if (product.isImageLoading) {
                                return const Center(
                                  child: CircularProgressIndicator(),
                                );
                              } else {
                                return Image.asset(
                                  product.image,
                                  fit: BoxFit.cover,
                                );
                              }
                            })(),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              product.name,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 4.0),
                            child: Text(
                              product.price,
                              style: const TextStyle(
                                fontSize: 14,
                                color: Colors.green,
                              ),
                            ),
                          ),
                          IconButton(
                            icon: const Icon(Icons.delete, color: Colors.red),
                            onPressed: () {
                              deleteProduct(product);
                            },
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
              ),
              builder: (context) =>
                  AddProductSheet(onSubmit: addNewProduct)); // ctr+space
        },
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
