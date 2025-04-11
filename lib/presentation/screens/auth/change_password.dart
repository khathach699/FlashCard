import 'package:flashcard/presentation/screens/auth/widgets/custom_text_field.dart';
import 'package:flashcard/presentation/widgets/custom_button.dart';

import 'package:flashcard/utils/app_strings.dart';
import 'package:flashcard/utils/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(30.sp),
        child: SizedBox(
          height: MediaQuery.of(context).size.height - 60.sp,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 30.h),
              // old password
              Text(AppStrings.oldPassword, style: TextStyles.title()),
              SizedBox(height: 30.h),
              CustomTextField(
                title: AppStrings.oldPassword,
                hintText: AppStrings.oldPassword,
                prefixIcon: FontAwesomeIcons.lock,
                suffixIcon: FontAwesomeIcons.eyeSlash,
              ),

              // new password
              SizedBox(height: 30.h),
              CustomTextField(
                title: AppStrings.newPassword,
                hintText: AppStrings.newPassword,
                prefixIcon: FontAwesomeIcons.lock,
                suffixIcon: FontAwesomeIcons.eyeSlash,
              ),

              // confirm password
              SizedBox(height: 30.h),
              CustomTextField(
                title: AppStrings.confirmPassword,
                hintText: AppStrings.confirmPassword,
                prefixIcon: FontAwesomeIcons.lock,
                suffixIcon: FontAwesomeIcons.eyeSlash,
              ),
              SizedBox(height: 30.h),
              // change password button
              CustomButton(text: AppStrings.changePassword, onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
