import 'package:bite_food_delivery/Controllers/home_controller.dart';
import 'package:bite_food_delivery/Models/restaurant_model.dart';
import 'package:get/get.dart';

class SearchController2 extends GetxController {
  final home = Get.find<HomeController>();

  final RxList<RestaurantModel> popularlist = <RestaurantModel>[].obs;
  @override
  void onInit() {
    super.onInit();
    ever(home.restaurantlist, (_) {
      final filtered = home.restaurantlist
          .where((item) => item.rating >= 4.5)
          .toList();
      popularlist.assignAll(filtered);
    });
  }
}
