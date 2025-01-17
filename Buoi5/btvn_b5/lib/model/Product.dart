class Product {
  final String name;
  final String image;
  final String price;
  bool isImageLoading;

  Product({
    required this.name,
    required this.image,
    required this.price,
    this.isImageLoading = true, // loading
  });
}
