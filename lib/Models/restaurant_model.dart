class RestaurantModel {
  final String name;
  final String imageUrl;
  final String category;
  final double rating;
  final int delivery;
  final  int time;

  const RestaurantModel({
    required this.name,
    required this.imageUrl,
    required this.category,
    required this.rating,
    required this.delivery,
    required this.time,
  });

  factory RestaurantModel.fromJson(Map<String, dynamic> json) {
    return RestaurantModel(
      name: json['name'],
      imageUrl: json['imageUrl'],
      category: json['category'],
      rating: json['rating'].toDouble(),
      delivery: json['delivery'],
      time: json['time']
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'imageUrl': imageUrl,
      'category': category,
      'rating': rating,
      'delivery': delivery,
      'time' : time
    };
  }
}
