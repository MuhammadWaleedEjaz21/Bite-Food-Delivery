class RestaurantModel {
  final String name;
  final String category;
  final String imageUrl;
  final double rating;
  final int delivery;
  final int time;

  const RestaurantModel({
    required this.name,
    required this.category,
    required this.imageUrl,
    required this.rating,
    required this.delivery,
    required this.time,
  });

  factory RestaurantModel.fromJson(Map<String, dynamic> json) {
    return RestaurantModel(
      name: json['name'],
      category: json['category'],
      imageUrl: json['imageUrl'],
      rating: json['rating'],
      delivery: json['delivery'],
      time: json['time'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'category': category,
      'imageUrl': imageUrl,
      'rating': rating,
      'delivery': delivery,
      'time': time,
    };
  }
}
