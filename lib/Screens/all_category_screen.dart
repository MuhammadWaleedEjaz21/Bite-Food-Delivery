import 'package:bite_food_delivery/Controllers/home_controller.dart';
import 'package:bite_food_delivery/Widgets/category_card.dart';
import 'package:bite_food_delivery/Widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AllCategoryScreen extends StatelessWidget {
  const AllCategoryScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeController>();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        back: true,
        title: Text(
          'All Category',
          style: GoogleFonts.sen(fontSize: 25.sp, fontWeight: FontWeight.bold),
        ),
      ),
      body: GridView.builder(
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: controller.categorylist.length,
        itemBuilder: (context, index) =>
            CategoryCard(model: controller.categorylist[index]),
      ),
    );
  }
}
