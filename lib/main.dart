import 'package:bite_food_delivery/Widgets/custom_bottom_bar.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  Get.put(BottomBarController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    final controller = Get.find<BottomBarController>();
    return ScreenUtilInit(
      designSize: Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: Obx(
          () => Scaffold(
            body: Container(),
            bottomNavigationBar: CustomBottomBar(
              items: [
                BottomBarItem(
                  icon: Icon(Icons.home),
                  title: Text('Home', style: GoogleFonts.sen()),
                  selectedIcon: Icon(Icons.home_filled),
                  selectedColor: Colors.orange,
                  unSelectedColor: Colors.grey,
                ),
                BottomBarItem(
                  icon: Icon(Icons.search),
                  title: Text('Search', style: GoogleFonts.sen()),
                  selectedIcon: Icon(Icons.search_rounded),
                  selectedColor: Colors.orange,
                  unSelectedColor: Colors.grey,
                ),
                BottomBarItem(
                  icon: Icon(Icons.person),
                  title: Text('Profile', style: GoogleFonts.sen()),
                  selectedIcon: Icon(Icons.person_outline),
                  selectedColor: Colors.orange,
                  unSelectedColor: Colors.grey,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
