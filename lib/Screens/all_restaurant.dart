import 'package:bite_food_delivery/Controllers/home_controller.dart';
import 'package:bite_food_delivery/Widgets/custom_appbar.dart';
import 'package:bite_food_delivery/Widgets/restaurant_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AllRestaurant extends StatelessWidget {
  const AllRestaurant({super.key});
  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeController>();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        back: true,
        title: Text(
          'All Restaurant',
          style: GoogleFonts.sen(fontSize: 25.sp, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        itemCount: controller.randomlist.length,
        itemBuilder: (context, index) {

          return RestaurantCard(model: controller.randomlist[index]);
        },
      ),
    );
  }
}
