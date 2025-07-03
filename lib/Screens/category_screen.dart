import 'package:bite_food_delivery/Controllers/category_selection_controller.dart';
import 'package:bite_food_delivery/Controllers/home_controller.dart';
import 'package:bite_food_delivery/Models/restaurant_model.dart';
import 'package:bite_food_delivery/Widgets/custom_appbar.dart';
import 'package:bite_food_delivery/Widgets/custom_drop_down.dart';
import 'package:bite_food_delivery/Widgets/restaurant_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CategoryScreen extends StatelessWidget {
  final String selected;
  const CategoryScreen({super.key, required this.selected});
  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeController>();
    final catController = Get.find<CategorySelectionController>();
    catController.selectedCategory.value = selected;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        back: true,
        title: CustomDropDown(
          items: controller.categorylist,
          initial: catController.selectedCategory.value,
          onSelected: (value) => catController.categorySelect(value),
        ),
      ),
      body: Obx(
        () => ListView.builder(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
          shrinkWrap: true,
          itemCount: catController.filteredlist.length,
          itemBuilder: (context, index) {
            return RestaurantCard(model: catController.filteredlist[index]);
          },
        ),
      ),
    );
  }
}
