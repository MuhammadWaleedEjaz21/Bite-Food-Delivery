import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomHeaderTile extends StatelessWidget {
  final String title;
  const CustomHeaderTile({required this.title, super.key});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 5.w),
      title: Text(title, style: GoogleFonts.sen(fontSize: 20.sp)),
      trailing: TextButton.icon(
        iconAlignment: IconAlignment.end,
        onPressed: () {},
        icon: Icon(Icons.arrow_forward_ios, color: Colors.orange, size: 16.sp),
        label: Text(
          'See All',
          style: GoogleFonts.sen(fontSize: 15.sp, color: Colors.orange),
        ),
      ),
    );
  }
}
