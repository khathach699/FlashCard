import 'package:flashcard/presentation/screens/auth/widgets/custom_text_field.dart';
import 'package:flashcard/presentation/widgets/custom_button.dart';
import 'package:flashcard/utils/app_strings.dart';
import 'package:flashcard/utils/routes.dart';
import 'package:flashcard/utils/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CheckEmailScreen extends StatelessWidget {
  const CheckEmailScreen({super.key});

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
              // check email title
              Text(AppStrings.checkEmail, style: TextStyles.title()),
              SizedBox(height: 30.h),
              CustomTextField(
                title: AppStrings.email,
                hintText: AppStrings.email,
                prefixIcon: FontAwesomeIcons.envelope,
              ),
              SizedBox(height: 30.h),
              // check email button
              CustomButton(
                text: AppStrings.checkEmail,
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.otp);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
