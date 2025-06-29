import 'package:bite/Models/category_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryCard extends StatelessWidget {
  final CategoryModel model;
  const CategoryCard({required this.model, super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120.h,
      width: 120.w,
      child: Column(
        children: [
          Container(
            height: 100.h,
            width: 100.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              image: DecorationImage(
                image: NetworkImage(model.imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text(model.name, style: GoogleFonts.sen(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
