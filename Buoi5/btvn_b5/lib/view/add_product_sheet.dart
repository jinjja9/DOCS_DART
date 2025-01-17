import 'package:btvn_b5/model/Product.dart';
import 'package:flutter/material.dart';

class AddProductSheet extends StatefulWidget {
  final Function(Product) onSubmit; // callB
  const AddProductSheet({super.key, required this.onSubmit});

  @override
  State<StatefulWidget> createState() {
    return _AddProductSheetState();
  }
}

class _AddProductSheetState extends State<AddProductSheet> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController priceController = TextEditingController();

  final Map<String, String> itemMap = {
    'Cam': 'assets/cam.png',
    'Dừa': 'assets/dua.png',
    'Khế': 'assets/khe.png',
    'Mít': 'assets/mit.png',
    'Nhãn': 'assets/nhan.png',
    'Quýt': 'assets/quyt.png',
  };
  String? selectedItem;
  String? selectedImage;

  @override
  void initState() {
    super.initState();
    selectedItem = itemMap.keys.first;
    selectedImage = itemMap[selectedItem];
  }

  @override
  void dispose() {
    nameController.dispose();
    priceController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16,
        right: 16,
        top: 16,
        bottom: MediaQuery.of(context).viewInsets.bottom + 16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'Add New Product',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          TextField(
            controller: nameController,
            decoration: const InputDecoration(
              labelText: 'Product Name',
              hintText: 'Enter product name',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 16),
          TextField(
            controller: priceController,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              labelText: 'Price',
              hintText: 'Enter product price',
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 16),
          DropdownButtonFormField<String>(
            value: selectedItem,
            decoration: const InputDecoration(
              labelText: 'Select Item',
              border: OutlineInputBorder(),
            ),
            items: itemMap.keys.map((String item) {
              return DropdownMenuItem<String>(
                value: item,
                child: Text(item),
              );
            }).toList(),
            onChanged: (String? newValue) {
              setState(() {
                selectedItem = newValue;
                selectedImage = itemMap[selectedItem];
              });
            },
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              final String name = nameController.text.trim();
              final String price = "${priceController.text.trim()} VND";
              //check required
              if (name.isEmpty || price.isEmpty) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Name and Price are required!'),
                  ),
                );
                return;
              }
              // add
              final newProduct = Product(
                name: name,
                image: selectedImage!, // ko null
                price: price,
              );
              widget.onSubmit(newProduct); //callB
              Navigator.pop(context);
            },
            child: const Text('Submit'),
          ),
        ],
      ),
    );
  }
}
