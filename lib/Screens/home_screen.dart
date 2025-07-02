import 'package:bite_food_delivery/Controllers/home_controller.dart';
import 'package:bite_food_delivery/Models/category_model.dart';
import 'package:bite_food_delivery/Models/restaurant_model.dart';
import 'package:bite_food_delivery/Screens/all_category_screen.dart';
import 'package:bite_food_delivery/Screens/all_restaurant.dart';
import 'package:bite_food_delivery/Screens/cart_screen.dart';
import 'package:bite_food_delivery/Widgets/category_card.dart';
import 'package:bite_food_delivery/Widgets/custom_appbar.dart';
import 'package:bite_food_delivery/Widgets/custom_header_tile.dart';
import 'package:bite_food_delivery/Widgets/custom_search_bar.dart';
import 'package:bite_food_delivery/Widgets/restaurant_card.dart';
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
        title: ListTile(
          contentPadding: EdgeInsets.all(0),
          title: Text(
            'DELIVER TO',
            style: GoogleFonts.sen(
              color: Colors.orange,
              fontSize: 20.r,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Padding(
            padding: EdgeInsets.only(right: 50.w),
            child: TextButton.icon(
              style: TextButton.styleFrom(
                padding: EdgeInsets.all(0),
                elevation: 0,
              ),
              iconAlignment: IconAlignment.end,
              onPressed: () {},
              icon: Icon(Icons.arrow_drop_down, size: 25.r),
              label: Text(
                'NFC Institute of Engineering and Technology, Multan',
                style: GoogleFonts.sen(fontSize: 15.sp, color: Colors.grey),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Get.to(() => CartScreen());
            },
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
      body: FutureBuilder(
        future: controller.fetch,
        builder: (context, asyncSnapshot) {
          return ListView(
            shrinkWrap: true,
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            children: [
              15.verticalSpace,
              Row(
                children: [
                  Text(
                    'Hello Waleed,',
                    style: GoogleFonts.sen(fontSize: 17.sp),
                  ),
                  Text(
                    ' Good Afternoon',
                    style: GoogleFonts.sen(
                      fontSize: 17.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              15.verticalSpace,
              CustomSearchBar(),
              15.verticalSpace,
              CustomHeaderTile(
                title: 'All Category',
                seeall: true,
                pages: AllCategoryScreen(),
              ),
              15.verticalSpace,
              SizedBox(
                height: 140.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return CategoryCard(model: controller.categorylist[index]);
                  },
                ),
              ),
              15.verticalSpace,
              CustomHeaderTile(
                title: 'All Restaurants',
                seeall: true,
                pages: AllRestaurant(),
              ),
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
          );
        },
      ),
    );
  }
}
