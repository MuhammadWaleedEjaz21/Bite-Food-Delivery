import 'package:bite_food_delivery/Controllers/login_controller.dart';
import 'package:bite_food_delivery/Widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final formkey = GlobalKey<FormState>();
    final emailcontroller = TextEditingController();
    final passwordcontroller = TextEditingController();
    final controller = Get.find<LoginController>();
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 2, 19, 44),
      body: Column(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Log In',
                  style: GoogleFonts.sen(
                    fontSize: 30.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Please sign in to your existing account',
                  style: GoogleFonts.sen(fontSize: 15.sp, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.r),
                  topRight: Radius.circular(30.r),
                ),
              ),
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                physics: NeverScrollableScrollPhysics(),
                children: [
                  30.verticalSpace,
                  Form(
                    key: formkey,
                    autovalidateMode: AutovalidateMode.onUnfocus,
                    child: Column(
                      children: [
                        CustomTextFormField(
                          label: 'Email',
                          hint: 'Email Address',
                          controller: emailcontroller,
                          keyboardType: TextInputType.emailAddress,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Email Address is Required';
                            }
                            if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                              return 'Incorrect Email Adress';
                            }
                            return null;
                          },
                        ),
                        20.verticalSpace,
                        CustomTextFormField(
                          label: 'Password',
                          hint: 'Password',
                          controller: passwordcontroller,
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: true,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Password Required';
                            }
                            return null;
                          },
                        ),
                        CheckboxListTile.adaptive(
                          value: controller.remember_me.value,
                          onChanged: (value) {},
                          title: Text('Remember Me', style: GoogleFonts.sen()),
                          checkColor: Colors.orange,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
