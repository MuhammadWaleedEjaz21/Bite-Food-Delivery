import 'package:bite_food_delivery/Models/category_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomDropDown extends StatelessWidget {
  const CustomDropDown({super.key, required this.items, required this.initial,required this.onSelected});

  final List<CategoryModel> items;
  final String initial;
  final Function(String) onSelected;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.white,
            border: BoxBorder.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(30.r),
          ),

          child: DropdownMenu(
            menuStyle: MenuStyle(
              backgroundColor: WidgetStateProperty.all(Colors.white),
              shape: WidgetStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.r),
                ),
              ),
              minimumSize: WidgetStateProperty.all(
                Size(constraints.maxWidth, 0),
              ),
              maximumSize: WidgetStateProperty.all(
                Size(constraints.maxWidth, double.infinity),
              ),
            ),
            initialSelection: initial,
            dropdownMenuEntries: items
                .map<DropdownMenuEntry>(
                  (e) => DropdownMenuEntry(value: e.name, label: e.name),
                )
                .toList(),
            textStyle: GoogleFonts.sen(),
            inputDecorationTheme: InputDecorationTheme(
              suffixIconColor: Colors.orange,
              border: OutlineInputBorder(borderSide: BorderSide.none),
            ),
            textAlign: TextAlign.center,
          ),
        );
      },
    );
  }
}
