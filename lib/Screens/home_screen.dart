import 'package:bite/Controllers/home_controller.dart';
import 'package:bite/Widgets/category_card.dart';
import 'package:bite/Widgets/custom_app_bar.dart';
import 'package:bite/Widgets/custom_header_tile.dart';
import 'package:bite/Widgets/restaurant_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeController>();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        leading: Image(
          image: AssetImage('assets/images/bite_logo.png'),
          fit: BoxFit.cover,
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Deliver To',
              style: GoogleFonts.sen(
                fontSize: 20.sp,
                color: Colors.orange,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Your Location',
              style: GoogleFonts.sen(fontSize: 15.sp, color: Colors.grey),
            ),
          ],
        ),
        actions: [
          IconButton(
            style: IconButton.styleFrom(backgroundColor: Colors.black),
            icon: Badge(
              isLabelVisible: false,
              label: Text('', style: TextStyle(color: Colors.white)),
              child: Icon(
                Icons.shopping_bag_outlined,
                color: Colors.white,
                size: 30.sp,
              ),
            ),
            onPressed: () {},
          ),
          15.horizontalSpace,
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: FutureBuilder(
          future: controller.categorydata,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            } else {
              return ListView(
                children: [
                  15.verticalSpace,
                  Row(
                    children: [
                      Text(
                        'Hey Waleed,',
                        style: GoogleFonts.sen(fontSize: 17.5.sp),
                      ),
                      Text(
                        ' Good Morning',
                        style: GoogleFonts.sen(
                          fontSize: 17.5.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  15.verticalSpace,
                  SearchBar(
                    hintText: 'Search for food, groceries, etc.',
                    onTap: () {},
                    backgroundColor: WidgetStateProperty.all(Colors.grey[100]),
                    shape: WidgetStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                    ),
                    elevation: WidgetStateProperty.all(0),
                    leading: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      child: Icon(Icons.search, color: Colors.grey),
                    ),
                  ),
                  20.verticalSpace,
                  CustomHeaderTile(title: 'All Categories'),
                  10.verticalSpace,
                  SizedBox(
                    height: 120.h,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 3,
                      itemBuilder: (context, index) =>
                          CategoryCard(model: controller.categorylist[index]),
                    ),
                  ),
                  10.verticalSpace,
                  CustomHeaderTile(title: 'All Restaurants'),
                  10.verticalSpace,
                  ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 3,
                    itemBuilder: (context, index) => RestaurantCard(),
                  ),
                ],
              );
            }
          },
        ),
      ),
    );
  }
}
