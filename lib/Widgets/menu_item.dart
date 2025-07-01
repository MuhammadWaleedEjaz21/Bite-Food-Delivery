import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class MenuItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final Function? onTap;

  const MenuItem({
    super.key,
    required this.icon,
    required this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle),
        padding: EdgeInsets.all(5.r),
        child: Icon(icon, color: Colors.orange, size: 25.r),
      ),
      title: Text(
        title,
        style: GoogleFonts.sen(fontSize: 15.sp, fontWeight: FontWeight.bold),
      ),
      trailing: Icon(Icons.arrow_forward_ios, size: 15.r, color: Colors.grey),
      onTap: () => onTap,
    );
  }
}
