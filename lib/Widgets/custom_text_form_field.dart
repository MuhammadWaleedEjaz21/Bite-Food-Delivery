import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextFormField extends StatelessWidget {
  final String label;
  final String hint;
  final TextInputType keyboardType;
  final String? Function(String?)? validator;
  final bool obscureText;
  final TextEditingController controller;

  const CustomTextFormField({
    super.key,
    required this.label,
    required this.hint,
    required this.keyboardType,
    required this.validator,
    this.obscureText = false,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label.toUpperCase(), style: GoogleFonts.sen(fontSize: 15.sp)),
        5.verticalSpace,
        TextFormField(
          controller: controller,
          style: GoogleFonts.sen(),
          keyboardType: keyboardType,
          obscureText: obscureText,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(20.r),
            labelText: hint,
            labelStyle: GoogleFonts.sen(),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10.r),
            ),
            filled: true,
            fillColor: Colors.grey[200],
          ),
          validator: validator,
          maxLines: 1,
          autocorrect: true,
        ),
      ],
    );
  }
}
