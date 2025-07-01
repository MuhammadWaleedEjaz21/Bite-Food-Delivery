import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';

class CustomBottomBar extends StatelessWidget {
  final List<BottomBarItem> items;
  const CustomBottomBar({super.key, required this.items});
  @override
  Widget build(BuildContext context) {
    final controller = Get.find<BottomBarController>();
    return StylishBottomBar(
      currentIndex: controller.currentIndex.value,
      onTap: (value) => controller.changeIndex(value),
      items: items,
      option: BubbleBarOptions(padding: EdgeInsets.only(top: 5.h), opacity: .2),
    );
  }

  static BottomBarItem customBottomItem(
    IconData icon,
    String title,
    IconData selectedIcon,
  ) {
    return BottomBarItem(
      icon: Icon(icon),
      title: Text(title, style: GoogleFonts.sen()),
      selectedIcon: Icon(selectedIcon),
      selectedColor: Colors.orange,
      unSelectedColor: Colors.grey,
      backgroundColor: Colors.orange,
    );
  }
}

class BottomBarController extends GetxController {
  final RxInt currentIndex = 0.obs;
  void changeIndex(int index) {
    currentIndex.value = index;
  }
}
