import 'package:btvn_b5/add_product_sheet.dart';
import 'package:flutter/material.dart';

import 'Product.dart';

class ProductGrid extends StatefulWidget {
  const ProductGrid({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ProductGridState();
  }
}

class _ProductGridState extends State<ProductGrid> {
  final List<Product> products = List.generate(
    0,
    (index) => Product(
      name: 'Product ${index + 1}',
      image: 'assets/cam.png',
      price: '100VND',
    ),
  );

  List<Product> displayedProducts = []; // ds hien thi tim kiem
  final TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    displayedProducts = products; // hien thi toan bo list ban dau
  }

  void searchProducts(String query) {
    setState(() {
      if (query.isEmpty) {
        displayedProducts = products; // hien all neu ko tim, kiem
      } else {
        displayedProducts = products
            .where((product) =>
                product.name.toLowerCase().contains(query.toLowerCase()))
            .toList(); // loc theo ten sp
      }
    });
  }

  void addNewProduct(Product product) {
    setState(() {
      products.insert(0, product);
      displayedProducts = products;
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
                  crossAxisCount: 2, // so cot
                  crossAxisSpacing: 8.0, //kc cot
                  mainAxisSpacing: 8.0, //kc dong
                  childAspectRatio: 1 / 1.25, // ti le rong/cao
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
                      borderRadius: BorderRadius.circular(16), //bo goc
                      child: Column(
                        children: [
                          Expanded(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(16),
                              child: Image.asset(
                                product.image,
                                fit: BoxFit.cover,
                              ),
                            ),
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
                              )),
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
                  AddProductSheet(onSubmit: addNewProduct)); //ctr+space
        },
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
