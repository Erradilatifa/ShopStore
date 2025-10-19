class Product {
  const Product({
    required this.id,
    required this.title,
    required this.price,
    required this.image,
  });

  final String id;
  final String title;
  final double price;
  final String image;

  // AJOUTEZ ces deux méthodes pour que contains() fonctionne
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Product && other.id == id;
  }

  @override
  int get hashCode => id.hashCode;

  @override
  String toString() {
    return 'Product(id: $id, title: $title, price: $price)';
  }
}