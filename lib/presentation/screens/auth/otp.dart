import 'package:flashcard/presentation/widgets/custom_button.dart';
import 'package:flashcard/utils/app_strings.dart';
import 'package:flashcard/utils/colors.dart';
import 'package:flashcard/utils/routes.dart';
import 'package:flashcard/utils/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // default pin theme
    final defaultPinTheme = PinTheme(
      width: 56.w,
      height: 56.h,
      textStyle: TextStyles.subtitle(),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.r),
        border: Border.all(color: AppColors.primary),
      ),
    );

    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(30.sp),
        child: SizedBox(
          height: MediaQuery.of(context).size.height - 60.sp,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('OTP', style: TextStyles.title()),
              SizedBox(height: 10.h),
              Text(AppStrings.enterCode, style: TextStyles.body()),
              SizedBox(height: 30.h),
              // otp input
              Pinput(
                length: 4,
                defaultPinTheme: defaultPinTheme,
                focusedPinTheme: defaultPinTheme.copyWith(
                  decoration: defaultPinTheme.decoration!.copyWith(
                    border: Border.all(
                      color: AppColors.primary.withOpacity(0.7),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.primary.withOpacity(0.2),
                        blurRadius: 4,
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                ),
                onCompleted: (pin) {
                  // Handle OTP completion
                  print("Completed: $pin");
                },
              ),
              SizedBox(height: 30.h),
              // did not receive code
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(AppStrings.didNotReceiveCode, style: TextStyles.body()),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      AppStrings.resendCode,
                      style: TextStyles.body().copyWith(
                        color: AppColors.primary,
                      ),
                    ),
                  ),
                ],
              ),
              // verify button
              SizedBox(height: 30.h),
              CustomButton(
                text: AppStrings.verify,
                onPressed: () {
                  Navigator.pushNamed(context, AppRoutes.changePassword);
                  // Handle verification
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
