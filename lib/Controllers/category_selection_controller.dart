import 'package:bite_food_delivery/Controllers/home_controller.dart';
import 'package:bite_food_delivery/Models/restaurant_model.dart';
import 'package:get/get.dart';

class CategorySelectionController extends GetxController {
  final RxString selectedCategory = ''.obs;
  final RxList<RestaurantModel> filteredlist = <RestaurantModel>[].obs;
  final home = Get.find<HomeController>();

  @override
  void onInit() {
    super.onInit();
    everAll([selectedCategory, home.restaurantlist], (_) {
      filterByCategory();
    });
  }

  void categorySelect(String value) {
    selectedCategory.value = value;
    filterByCategory();
    update();
  }

  void filterByCategory() {
    filteredlist.assignAll(
      home.restaurantlist.where(
        (item) => item.category == selectedCategory.value,
      ),
    );
  }
}
