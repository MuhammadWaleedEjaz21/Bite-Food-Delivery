import 'package:bite_food_delivery/Models/restaurant_model.dart';
import 'package:bite_food_delivery/Widgets/custom_appbar.dart';
import 'package:bite_food_delivery/Widgets/custom_header_tile.dart';
import 'package:bite_food_delivery/Widgets/custom_search_bar.dart';
import 'package:bite_food_delivery/Widgets/restaurant_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        title: Padding(
          padding: EdgeInsets.only(left: 25.w),
          child: Text(
            'Search',
            style: GoogleFonts.sen(
              fontSize: 30.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            style: IconButton.styleFrom(backgroundColor: Colors.black),
            icon: Icon(
              Icons.shopping_bag_outlined,
              color: Colors.white,
              size: 30.r,
            ),
          ),
          15.horizontalSpace,
        ],
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        children: [
          15.verticalSpace,
          CustomSearchBar(),
          15.verticalSpace,
          CustomHeaderTile(title: 'Recent Keywords', seeall: false),
          15.verticalSpace,
          GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 5.w,
              mainAxisSpacing: 5.h,
              mainAxisExtent: 45.r,
            ),
            itemCount: 2,
            shrinkWrap: true,
            itemBuilder: (context, index) => ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange[50],
                elevation: 0,
              ),
              onPressed: () {},
              child: Text(
                'Keywords',
                style: GoogleFonts.sen(
                  color: Colors.orange,
                  fontSize: 17.sp,
                  fontWeight: FontWeight.bold,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          75.verticalSpace,
          CustomHeaderTile(title: 'Popular Restaurants', seeall: true),
          15.verticalSpace,
          ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 2,
            itemBuilder: (context, index) {
              final model = RestaurantModel(
                name: 'Pizza Hut',
                category: 'Pizza',
                imageUrl: '',
                rating: 4.7,
                delivery: 49,
                time: 30,
              );
              return RestaurantCard(model: model);
            },
          ),
        ],
      ),
    );
  }
}
