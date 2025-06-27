import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});
  @override
  Widget build(BuildContext context) {
    return SearchBar(
      hintText: 'Search for food, groceries, etc.',
      onTap: () {},
      backgroundColor: WidgetStateProperty.all(Colors.grey[100]),
      shape: WidgetStateProperty.all(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.r)),
      ),
      elevation: WidgetStateProperty.all(0),
      leading: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Icon(Icons.search, color: Colors.grey),
      ),
    );
  }
}
