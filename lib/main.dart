import 'package:bite/Controllers/home_controller.dart';
import 'package:bite/Screens/account_screen.dart';
import 'package:bite/Screens/home_screen.dart';
import 'package:bite/Screens/search_screen.dart';
import 'package:bite/Widgets/custom_bottom_navigation_bar.dart';
import 'package:bite/local_storage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  Get.put(HomeController());
  Get.put(LocalStorage());
  Get.put(CustomNavigationBarController());
  runApp(MyApp());
}

RxList<Widget> screens = <Widget>[
  HomeScreen(),
  SearchScreen(),
  AccountScreen(),
].obs;

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    final navcontroller = Get.find<CustomNavigationBarController>();
    return ScreenUtilInit(
      designSize: Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: Obx(() => screens[navcontroller.currentIndex.value]),
      builder: (context, child) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: child ?? Container(),
          bottomNavigationBar: CustomBottomNavigationBar(
            items: [
              BottomBarItem(
                icon: Icon(Icons.home_outlined),
                title: Text('Home', style: GoogleFonts.sen()),
                selectedColor: Colors.orange,
                backgroundColor: Colors.orange,
                selectedIcon: Icon(Icons.home),
              ),
              BottomBarItem(
                icon: Icon(Icons.search_outlined),
                title: Text('Search', style: GoogleFonts.sen()),
                selectedColor: Colors.orange,
                backgroundColor: Colors.orange,
                selectedIcon: Icon(Icons.search),
              ),
              BottomBarItem(
                icon: Icon(Icons.person_outline),
                title: Text('Account', style: GoogleFonts.sen()),
                selectedColor: Colors.orange,
                backgroundColor: Colors.orange,
                selectedIcon: Icon(Icons.person),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
