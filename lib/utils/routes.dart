import 'package:flashcard/presentation/screens/auth/change_password.dart';
import 'package:flashcard/presentation/screens/auth/check_email.dart';
import 'package:flashcard/presentation/screens/auth/otp.dart';
import 'package:flashcard/presentation/screens/auth/sign_in.dart';
import 'package:flashcard/presentation/screens/auth/sign_up.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String signIn = '/signIn';
  static const String signUp = '/signUp';
  static const String checkEmail = '/checkEmail';
  static const String otp = '/otp';
  static const String changePassword = '/changePassword';

  static Map<String, WidgetBuilder> get routes => {
    signIn: (context) => SignInScreen(),
    signUp: (context) => SignUpScreen(),
    checkEmail: (context) => CheckEmailScreen(),
    otp: (context) => OTPScreen(),
    changePassword: (context) => ChangePasswordScreen(),
  };
}
