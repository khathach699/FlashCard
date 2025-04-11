import 'package:flashcard/presentation/widgets/custom_button.dart';
import 'package:flashcard/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../utils/app_strings.dart';
import '../../../utils/colors.dart';
import '../../../utils/image_paths.dart';
import '../../../utils/text_styles.dart';
import '../auth/widgets/custom_text_field.dart';
import '../auth/widgets/custom_login_social.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({super.key});

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(30.sp),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 60.h),
            Text(AppStrings.login, style: TextStyles.title()),
            SizedBox(height: 60.h),

            // Email
            CustomTextField(
              title: AppStrings.email,
              hintText: AppStrings.email,
              prefixIcon: FontAwesomeIcons.envelope,
            ),
            SizedBox(height: 20.h),

            // Password
            CustomTextField(
              title: AppStrings.password,
              hintText: AppStrings.password,
              prefixIcon: FontAwesomeIcons.lock,
              suffixIcon: FontAwesomeIcons.eyeSlash,
              obscureText: true,
            ),
            SizedBox(height: 10.h),

            //Remember me and Forgot Passwordh
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(AppStrings.rememberMe, style: TextStyles.body()),
                    Checkbox(value: false, onChanged: (value) {}),
                  ],
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoutes.checkEmail);
                  },
                  child: Text(
                    AppStrings.forgotPassword,
                    style: TextStyles.body(),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30.h),

            // Login Button
            CustomButton(text: AppStrings.login, onPressed: () {}),
            SizedBox(height: 30.h),

            // Or
            Row(
              children: [
                Expanded(child: Divider(color: AppColors.primary)),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Text(AppStrings.or, style: TextStyles.body()),
                ),
                Expanded(child: Divider(color: AppColors.primary)),
              ],
            ),
            SizedBox(height: 30.h),

            // Social login
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomLoginSocial(imagePath: ImagePaths.google),
                SizedBox(width: 15.w),
                CustomLoginSocial(imagePath: ImagePaths.facebook),
              ],
            ),
            SizedBox(height: 30.h),

            // Don't have an account
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(AppStrings.dontHaveAccount, style: TextStyles.body()),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoutes.signUp);
                  },
                  child: Text(AppStrings.register, style: TextStyles.body()),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
