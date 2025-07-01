import 'package:bite_food_delivery/Widgets/cart_item.dart';
import 'package:bite_food_delivery/Widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final bool edit = false;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 2, 19, 44),
      appBar: CustomAppBar(
        dark: true,
        back: true,
        title: Text(
          'Cart',
          style: GoogleFonts.sen(
            fontSize: 25.sp,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              edit ? 'DONE' : 'EDIT ITEMS',
              style: GoogleFonts.sen(
                fontSize: 17.sp,
                color: edit ? Colors.green : Colors.orange,
                decoration: TextDecoration.underline,
                decorationThickness: 2.sp,
                decorationColor: edit ? Colors.green : Colors.orange,
              ),
            ),
          ),
          15.horizontalSpace,
        ],
      ),
      body: ListView.builder(
        shrinkWrap: true,
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
        itemCount: 2,
        itemBuilder: (context, index) => CartItem(),
      ),
      bottomNavigationBar: Container(
        height: 290.h,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.r),
            topRight: Radius.circular(30.r),
          ),
        ),
      ),
    );
  }
}
