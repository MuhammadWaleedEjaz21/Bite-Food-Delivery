import 'package:bite/Models/category_model.dart';
import 'package:bite/Models/restaurant_model.dart';
import 'package:bite/firebase_conn.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  late final Future<void> categorydata;
  RxList<CategoryModel> categorylist = <CategoryModel>[].obs;
  RxList<RestaurantModel> restaurantlist = <RestaurantModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    categorydata = fetchdata();
  }

  Future<void> fetchdata() async {
    final db = FirebaseConn().database('Categories');
    final snapshot = await db.get();
    categorylist.clear();
    for (var doc in snapshot.docs) {
      final data = doc.data();
      if (data is Map<String, dynamic>) {
        final category = CategoryModel.fromJson(data);
        categorylist.add(category);
      }
    }
    restaurantlist.clear();
    final db2 = FirebaseConn().database('Restaurants');
    final snapshot2 = await db2.get();
    for (var doc in snapshot2.docs) {
      final data = doc.data();
      if (data is Map<String, dynamic>) {
        final restaurant = RestaurantModel.fromJson(data);
        restaurantlist.add(restaurant);
      }
    }
  }

  Future<void> refreshCategories() async {
    await fetchdata();
    update();
  }
}
