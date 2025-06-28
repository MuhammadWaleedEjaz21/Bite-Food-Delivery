import 'package:bite/Models/restaurant_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class RestaurantCard extends StatelessWidget {
  final RestaurantModel model;
  const RestaurantCard({required this.model,super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: SizedBox(
        height: 250.h,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 150.h,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(model.imageUrl),fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(20.r),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    model.name,
                    style: GoogleFonts.sen(
                      fontSize: 25.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(model.category, style: GoogleFonts.sen(fontSize: 15.sp)),
                  5.verticalSpace,
                  Row(
                    children: [
                      Icon(
                        Icons.star_outline,
                        color: Colors.orange,
                        size: 25.r,
                      ),
                      2.horizontalSpace,
                      Text(
                        '${model.rating}',
                        style: GoogleFonts.sen(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      15.horizontalSpace,
                      Icon(
                        Icons.delivery_dining_outlined,
                        color: Colors.orange,
                        size: 25.r,
                      ),
                      2.horizontalSpace,
                      Text('Rs ${model.delivery}', style: GoogleFonts.sen(fontSize: 15.sp)),
                      15.horizontalSpace,
                      Icon(
                        Icons.timelapse_outlined,
                        color: Colors.orange,
                        size: 25.r,
                      ),
                      2.horizontalSpace,
                      Text('${model.time} min', style: GoogleFonts.sen(fontSize: 15.sp)),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
