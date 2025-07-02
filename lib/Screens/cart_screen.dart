import 'package:bite_food_delivery/Widgets/cart_item.dart';
import 'package:bite_food_delivery/Widgets/custom_appbar.dart';
import 'package:bite_food_delivery/Widgets/custom_header_tile.dart';
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
        height: 310.h,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.r),
            topRight: Radius.circular(30.r),
          ),
        ),
        child: ListView(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          children: [
            20.verticalSpace,
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text('Delivery Address', style: GoogleFonts.sen(fontSize: 20.sp,color: Colors.grey),
              ),
              trailing: TextButton(onPressed: (){}, child: Text('EDIT',style: GoogleFonts.sen(color: Colors.orange,fontSize: 15.sp,decoration: TextDecoration.underline,decorationColor: Colors.orange,decorationThickness: 2.sp),)),
            ),
            15.verticalSpace,
            TextField(
              readOnly: true,
              decoration: InputDecoration(
                hintText: 'NFC Institute of Engineering and Technology, Multan',
                hintStyle: GoogleFonts.sen(fontSize: 17.sp,color: Colors.grey),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.r),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.grey[200]
              ),
            ),
            15.verticalSpace,
            ListTile(
              contentPadding: EdgeInsets.all(0),
              title: Row(children: [
                Text('Total : ',style: GoogleFonts.sen(fontSize: 20.sp,color: Colors.grey),),
                Text('Rs 400',style: GoogleFonts.sen(fontSize: 30.sp,color: Colors.black),),
              ],),
              trailing: TextButton.icon(onPressed: (){}, label: Text('Breakdown',style: GoogleFonts.sen(color: Colors.orange,fontSize: 15.sp,decoration: TextDecoration.underline,decorationColor: Colors.orange,decorationThickness: 2.sp),),icon: Icon(Icons.arrow_forward_ios),iconAlignment: IconAlignment.end,),
            ),
            7.5.verticalSpace,
            ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.r)
              ),
               padding: EdgeInsets.symmetric(horizontal: 100.w,vertical: 15.h)
            ) ,child: Text('Place Order',style: GoogleFonts.sen(color: Colors.white,fontSize: 20.sp,fontWeight: FontWeight.bold),))
          ],
        ),
      ),
    );
  }
}
