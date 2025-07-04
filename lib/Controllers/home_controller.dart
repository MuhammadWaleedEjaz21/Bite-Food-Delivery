import 'dart:math';

import 'package:bite_food_delivery/Controllers/firebase_controller.dart';
import 'package:bite_food_delivery/Models/category_model.dart';
import 'package:bite_food_delivery/Models/restaurant_model.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  late Future<void> fetch;
  RxList<CategoryModel> categorylist = <CategoryModel>[].obs;
  RxList<RestaurantModel> restaurantlist = <RestaurantModel>[].obs;
  RxList<RestaurantModel> randomlist = <RestaurantModel>[].obs;
  @override
  void onInit() {
    super.onInit();
    fetch = fetchData();
  }

  Future<void> fetchData() async {
    final db = FirebaseController.database('Categories');
    final snapshot = await db.get();
    final data = snapshot.docs;
    categorylist.value = data
        .map((e) => CategoryModel.fromJson(e.data() as Map<String, dynamic>))
        .toList();

    final db2 = FirebaseController.database('Restaurants');
    final snapshot2 = await db2.get();
    final data2 = snapshot2.docs;
    restaurantlist.value = data2
        .map((e) => RestaurantModel.fromJson(e.data() as Map<String, dynamic>))
        .toList();

    randomlist = restaurantlist;
    randomlist.shuffle(Random());
  }
}
