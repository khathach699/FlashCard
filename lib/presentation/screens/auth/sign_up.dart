import 'package:flashcard/presentation/screens/auth/widgets/custom_login_social.dart';
import 'package:flashcard/presentation/screens/auth/widgets/custom_text_field.dart';
import 'package:flashcard/presentation/widgets/custom_button.dart';
import 'package:flashcard/utils/app_strings.dart';
import 'package:flashcard/utils/image_paths.dart';
import 'package:flashcard/utils/routes.dart';
import 'package:flashcard/utils/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(30.sp),
        child: Column(
          children: [
            SizedBox(height: 60.h),
            Text('Sign Up', style: TextStyles.title()),
            SizedBox(height: 30.h),
            // Name
            CustomTextField(
              title: 'Name',
              hintText: 'Enter your name',
              prefixIcon: FontAwesomeIcons.user,
            ),
            SizedBox(height: 20.h),

            // Email
            CustomTextField(
              title: 'Email',
              hintText: 'Enter your email',
              prefixIcon: FontAwesomeIcons.envelope,
            ),
            SizedBox(height: 20.h),

            // Password
            CustomTextField(
              title: 'Password',
              hintText: 'Enter your password',
              prefixIcon: FontAwesomeIcons.lock,
              obscureText: true,
            ),
            SizedBox(height: 5.h),

            // Privacy Policy
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(AppStrings.privacyPolicy, style: TextStyles.body()),
                Checkbox(value: false, onChanged: (value) {}),
              ],
            ),
            SizedBox(height: 30.h),

            // Sign Up Button
            CustomButton(text: 'Sign Up', onPressed: () {}),
            SizedBox(height: 30.h),

            // Or
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Row(
                children: [
                  Expanded(child: Divider(color: Colors.black, thickness: 1)),
                  SizedBox(width: 10.w),
                  Text(AppStrings.or, style: TextStyles.body()),
                  SizedBox(width: 10.w),
                  Expanded(child: Divider(color: Colors.black, thickness: 1)),
                ],
              ),
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

            // Already have an account
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(AppStrings.alreadyHaveAccount, style: TextStyles.body()),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, AppRoutes.signIn);
                  },
                  child: Text(AppStrings.login, style: TextStyles.body()),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
