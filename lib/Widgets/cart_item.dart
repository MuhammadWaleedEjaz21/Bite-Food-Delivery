import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CartItem extends StatelessWidget {
  final bool edit;
  const CartItem({super.key, this.edit = false});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.h),
      child: Row(
        children: [
          Container(
            height: 120.h,
            width: 120.w,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(20.r),
            ),
          ),
          15.horizontalSpace,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Cart Item',
                style: GoogleFonts.sen(fontSize: 25.sp, color: Colors.white),
              ),
              Text(
                'Rs 64',
                style: GoogleFonts.sen(
                  color: Colors.white,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              10.verticalSpace,
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    style: IconButton.styleFrom(
                      backgroundColor: Colors.grey.withOpacity(.3),
                    ),
                    icon: Icon(Icons.add, color: Colors.white),
                  ),
                  5.horizontalSpace,
                  Text(
                    '1',
                    style: GoogleFonts.sen(
                      fontSize: 20.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  5.horizontalSpace,
                  IconButton(
                    onPressed: () {},
                    style: IconButton.styleFrom(
                      backgroundColor: Colors.grey.withOpacity(.3),
                    ),
                    icon: Icon(Icons.remove, color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
          20.horizontalSpace,
          edit
              ? IconButton(
                  onPressed: () {},
                  style: IconButton.styleFrom(backgroundColor: Colors.red),
                  icon: Icon(Icons.close, color: Colors.white),
                )
              : SizedBox.shrink(),
        ],
      ),
    );
  }
}
