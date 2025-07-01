import 'package:bite_food_delivery/Models/restaurant_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class RestaurantCard extends StatelessWidget {
  final RestaurantModel model;
  const RestaurantCard({super.key, required this.model});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 140.h,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(10.r),
          ),
        ),
        10.verticalSpace,
        Text(
          model.name,
          style: GoogleFonts.sen(fontSize: 25.sp, fontWeight: FontWeight.bold),
        ),
        Text(model.category, style: GoogleFonts.sen(fontSize: 17.sp)),
        5.verticalSpace,
        Row(
          children: [
            Row(
              children: [
                Icon(
                  Icons.star_outline_rounded,
                  size: 30.r,
                  color: Colors.orange,
                ),
                2.5.horizontalSpace,
                Text(
                  '${model.rating}',
                  style: GoogleFonts.sen(
                    fontSize: 17.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            17.5.horizontalSpace,
            Row(
              children: [
                Icon(
                  Icons.delivery_dining_outlined,
                  size: 30.r,
                  color: Colors.orange,
                ),
                2.5.horizontalSpace,
                Text(
                  'Rs ${model.delivery}',
                  style: GoogleFonts.sen(fontSize: 17.sp),
                ),
              ],
            ),
            17.5.horizontalSpace,
            Row(
              children: [
                Icon(
                  Icons.timelapse_outlined,
                  size: 30.r,
                  color: Colors.orange,
                ),
                2.5.horizontalSpace,
                Text(
                  '${model.time} Min',
                  style: GoogleFonts.sen(fontSize: 17.sp),
                ),
              ],
            ),
          ],
        ),
        25.verticalSpace,
      ],
    );
  }
}
