import 'package:bite_food_delivery/Widgets/custom_appbar.dart';
import 'package:bite_food_delivery/Widgets/menu_item.dart';
import 'package:bite_food_delivery/Widgets/menu_section.dart';
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
        title: Padding(
          padding: EdgeInsets.only(left: 25.w),
          child: Text(
            'Account',
            style: GoogleFonts.sen(
              fontSize: 30.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            style: IconButton.styleFrom(backgroundColor: Colors.grey[100]),
            icon: Icon(Icons.more_horiz, color: Colors.black, size: 30.r),
          ),
          15.horizontalSpace,
        ],
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        children: [
          15.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.bottomRight,
                clipBehavior: Clip.none,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.orange,
                    radius: 60.r,
                    child: Container(),
                  ),
                  IconButton(
                    onPressed: () {},
                    style: IconButton.styleFrom(
                      backgroundColor: Colors.orange[50],
                    ),
                    icon: Icon(Icons.edit, color: Colors.orange),
                  ),
                ],
              ),
              10.horizontalSpace,
              Flexible(
                child: ListTile(
                  title: Text(
                    'Waleed Ejaz',
                    style: GoogleFonts.sen(
                      fontSize: 25.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    'm.waleedejaz2003@gmail.com',
                    style: GoogleFonts.sen(fontSize: 17.sp),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ],
          ),
          15.verticalSpace,
          MenuSection(
            items: [
              MenuItem(icon: Icons.person_outline, title: 'Personal Info'),
              MenuItem(icon: Icons.map_outlined, title: 'Address'),
            ],
          ),
          15.verticalSpace,
          MenuSection(
            items: [
              MenuItem(icon: Icons.shopping_cart_outlined, title: 'Cart'),
              MenuItem(icon: Icons.favorite_outline, title: 'Favourite'),
              MenuItem(
                icon: Icons.notifications_outlined,
                title: 'Notification',
              ),
              MenuItem(
                icon: Icons.credit_card_outlined,
                title: 'Payment Method',
              ),
            ],
          ),
          15.verticalSpace,
          MenuSection(
            items: [
              MenuItem(icon: Icons.help_outline, title: 'FAQs'),
              MenuItem(icon: Icons.settings_outlined, title: 'Settings'),
            ],
          ),
          15.verticalSpace,
          MenuSection(
            items: [MenuItem(icon: Icons.logout_outlined, title: 'Log Out')],
          ),
        ],
      ),
    );
  }
}
