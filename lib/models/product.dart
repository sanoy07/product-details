class Product {
  final int id;
  final String title;
  final String? description;
  final String? brand;
  final String? category;
  final String thumbnail;
  final double? price;
  final double? rating;

  Product({
    required this.id,
    required this.title,
    required this.thumbnail,
    this.description,
    this.brand,
    this.category,
    this.price,
    this.rating,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'] ?? 0,
      title: json['title'] ?? 'No Title',
      thumbnail: json['thumbnail'] ?? '',
      description: json['description'],
      brand: json['brand'],
      category: json['category'],
      price: (json['price'] as num?)?.toDouble(),
      rating: (json['rating'] as num?)?.toDouble(),
    );
  }
}
