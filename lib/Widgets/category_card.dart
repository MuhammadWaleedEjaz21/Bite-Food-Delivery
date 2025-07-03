import 'package:bite_food_delivery/Models/category_model.dart';
import 'package:bite_food_delivery/Screens/category_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryCard extends StatelessWidget {
  final CategoryModel model;
  const CategoryCard({super.key, required this.model});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.w),
      child: GestureDetector(
        onTap: () => Get.to(() => CategoryScreen(selected: model.name)),
        child: Column(
          children: [
            Card(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.r),
              ),
              elevation: 5.r,
              child: Padding(
                padding: EdgeInsets.all(10.r),
                child: Container(
                  height: 80.h,
                  width: 90.w,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(model.imageUrl),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                ),
              ),
            ),
            5.verticalSpace,
            Text(
              model.name,
              style: GoogleFonts.sen(
                fontSize: 17.sp,
                fontWeight: FontWeight.bold,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
