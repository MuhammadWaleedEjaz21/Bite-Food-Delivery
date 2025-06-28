import 'package:bite/Widgets/custom_app_bar.dart';
import 'package:bite/Widgets/custom_header_tile.dart';
import 'package:bite/Widgets/custom_search_bar.dart';
import 'package:bite/Widgets/restaurant_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Models/restaurant_model.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        leading: 1.horizontalSpace,
        title: Text(
          '   Search',
          style: GoogleFonts.sen(fontSize: 25.sp, fontWeight: FontWeight.bold),
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
        child: ListView(
          children: [
            10.horizontalSpace,
            CustomSearchBar(),
            10.verticalSpace,
            CustomHeaderTile(title: 'Popular Searches'),
            10.verticalSpace,
            GridView.builder(
              shrinkWrap: true,
              itemCount: 5,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: 2.5.r,
                crossAxisCount: 3,
                crossAxisSpacing: 4.w,
                mainAxisSpacing: 4.h,
              ),
              itemBuilder: (context, index) {
                return TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.grey[100],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.r),
                    ),
                  ),
                  child: Text(
                    'Search ${index + 1}',
                    style: GoogleFonts.sen(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                );
              },
            ),
            20.verticalSpace,
            CustomHeaderTile(title: 'Popular Restaurants'),
            10.verticalSpace,
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 3,
              itemBuilder: (context, index) {
                final restaurant = RestaurantModel(name: 'Restaurant $index', imageUrl: 'assets/images/restaurants/broadway_pizza.jpg', category: 'Pizza', rating: 4.4, delivery: 49, time: 30);
                return RestaurantCard(model: restaurant);
              },
            ),
          ],
        ),
      ),
    );
  }
}
