import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? title;
  final List<Widget>? actions;
  final Widget? leading;
  const CustomAppBar({super.key, this.title, this.actions, this.leading});
  @override
  Size get preferredSize => Size.fromHeight(80.h);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 100.h,
      leadingWidth: 100.w,
      title: title,
      leading: leading,
      actions: actions,
      backgroundColor: Colors.white,
    );
  }
}
