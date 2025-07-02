import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomHeaderTile extends StatelessWidget {
  final String title;
  final bool seeall;
  final Widget? pages;
  const CustomHeaderTile({
    super.key,
    required this.title,
    required this.seeall,
    this.pages,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.all(0),
      title: Text(title, style: GoogleFonts.sen(fontSize: 20.sp)),
      trailing: seeall
          ? TextButton.icon(
              onPressed: () => Get.to(() => pages!),
              label: Text(
                'See All',
                style: GoogleFonts.sen(fontSize: 17.sp, color: Colors.orange),
              ),
              iconAlignment: IconAlignment.end,
              icon: Icon(Icons.arrow_forward_ios, color: Colors.orange),
            )
          : null,
    );
  }
}
