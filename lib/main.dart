import 'package:bite_food_delivery/Controllers/category_selection_controller.dart';
import 'package:bite_food_delivery/Controllers/home_controller.dart';
import 'package:bite_food_delivery/Screens/account_screen.dart';
import 'package:bite_food_delivery/Screens/home_screen.dart';
import 'package:bite_food_delivery/Screens/search_screen.dart';
import 'package:bite_food_delivery/Widgets/custom_bottom_bar.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  Get.put(BottomBarController());
  Get.put(HomeController());
  Get.put(CategorySelectionController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    final controller = Get.find<BottomBarController>();
    final List<Widget> screens = [
      HomeScreen(),
      SearchScreen(),
      AccountScreen(),
    ];
    return ScreenUtilInit(
      designSize: Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: Obx(
          () => Scaffold(
            body: screens[controller.currentIndex.value],
            bottomNavigationBar: CustomBottomBar(
              items: [
                CustomBottomBar.customBottomItem(
                  Icons.home_outlined,
                  'Home',
                  Icons.home,
                ),
                CustomBottomBar.customBottomItem(
                  Icons.search_outlined,
                  'Search',
                  Icons.search,
                ),
                CustomBottomBar.customBottomItem(
                  Icons.person_outline,
                  'Profile',
                  Icons.person,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
