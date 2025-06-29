import 'package:bite/Widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        leading: 1.horizontalSpace,
        title: Text(
          '   Account',
          style: GoogleFonts.sen(fontSize: 25.sp, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_horiz, size: 30.sp),
            style: IconButton.styleFrom(backgroundColor: Colors.grey[200]),
          ),
          15.horizontalSpace,
        ],
      ),
      body: ListView(children: [
        ]
      ),
    );
  }
}
