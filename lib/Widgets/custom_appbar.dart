import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? leading;
  final Widget? title;
  final List<Widget>? actions;
  final bool back;
  final bool dark;

  const CustomAppBar({
    super.key,
    this.leading,
    this.title,
    this.actions,
    this.back = false,
    this.dark = false,
  });
  @override
  Size get preferredSize => Size.fromHeight(90.h);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      titleSpacing: 0,
      toolbarHeight: 90.h,
      leadingWidth: 100.w,
      backgroundColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,
      leading: back
          ? IconButton(
              padding: EdgeInsets.only(
                left: 15.w,
                top: 10.h,
                bottom: 10.h,
                right: 5.w,
              ),
              onPressed: () {
                Get.back();
              },
              style: IconButton.styleFrom(
                backgroundColor: Colors.grey[200]?.withOpacity(.3),
              ),
              icon: Icon(
                Icons.arrow_back_ios,
                size: 30.r,
                color: dark ? Colors.white : Colors.black,
              ),
            )
          : leading,
      title: title,
      actions: actions,
    );
  }
}
