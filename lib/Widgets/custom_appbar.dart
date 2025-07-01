import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? leading;
  final Widget? title;
  final List<Widget>? actions;

  const CustomAppBar({super.key, this.leading, this.title, this.actions});
  @override
  Size get preferredSize => Size.fromHeight(90.h);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      titleSpacing: 0,
      toolbarHeight: 90.h,
      leadingWidth: 100.w,
      backgroundColor: Colors.white,
      leading: leading,
      title: title,
      actions: actions,
    );
  }
}
