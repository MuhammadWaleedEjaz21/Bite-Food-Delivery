import 'package:bite/Models/restaurant_model.dart';
import 'package:bite/firebase_conn.dart';

class LocalStorage {
  List<RestaurantModel> localRestaurants = [
    RestaurantModel(name: 'Kababjees Fried Chicken', imageUrl: 'assets/images/restaurants/kebabjeesfc.jpg', category: 'Burger', rating: 4.7, delivery: 49, time: 35),
    RestaurantModel(name: 'KFC', imageUrl: 'assets/images/restaurants/kfc.jpg', category: 'Burger', rating: 4.8, delivery: 50, time: 60),
    RestaurantModel(name: "McDonald's", imageUrl: 'assets/images/restaurants/mcdonalds.jpg', category: 'Burger', rating: 4.5, delivery: 50, time: 25),
    RestaurantModel(name: 'Belly Deli Burgers', imageUrl: 'assets/images/restaurants/belly_deli.jpg', category: 'Burger', rating: 4.3, delivery: 79, time: 60),
    RestaurantModel(name: 'Grill Hut', imageUrl: 'assets/images/restaurants/grill_hut.jpg', category: 'Burger', rating: 4.5, delivery: 79, time: 40),
  ];

  var db = FirebaseConn().database('Restaurants');
  Future<void> addData() async {
    for (var category in localRestaurants) {
      await db.doc(category.name).set(category.toJson());
    }
  }
}
