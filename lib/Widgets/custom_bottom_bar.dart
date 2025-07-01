import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
      option: BubbleBarOptions(),
    );
  }
}

class BottomBarController extends GetxController {
  final RxInt currentIndex = 0.obs;
  void changeIndex(int index) {
    currentIndex.value = index;
  }
}
