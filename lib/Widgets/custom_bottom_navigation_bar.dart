import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final List<BottomBarItem> items;
  final CustomNavigationBarController cntrl =
      Get.find<CustomNavigationBarController>();
  CustomBottomNavigationBar({super.key, required this.items});
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => StylishBottomBar(
        items: items,
        currentIndex: cntrl.currentIndex.value,
        onTap: (index) {
          cntrl.changeIndex(index);
        },
        option: BubbleBarOptions(
          barStyle: BubbleBarStyle.vertical,
          opacity: 0.2,
          padding: EdgeInsets.symmetric(vertical: 10.h),
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}

class CustomNavigationBarController extends GetxController {
  var currentIndex = 0.obs;

  void changeIndex(int index) {
    currentIndex.value = index;
  }
}
