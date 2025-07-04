import 'package:bite_food_delivery/Controllers/search_controller.dart';
import 'package:bite_food_delivery/Widgets/custom_appbar.dart';
import 'package:bite_food_delivery/Widgets/restaurant_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class PopularRestaurant extends StatelessWidget {
  const PopularRestaurant({super.key});
  @override
  Widget build(BuildContext context) {
    final controller = Get.find<SearchController2>();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        back: true,
        title: Text(
          'Popular Restaurants',
          style: GoogleFonts.sen(fontSize: 25.sp, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
        shrinkWrap: true,
        itemCount: controller.popularlist.length,
        itemBuilder: (context, index) {
          return RestaurantCard(model: controller.popularlist[index]);
        },
      ),
    );
  }
}
