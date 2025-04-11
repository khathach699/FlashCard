import 'package:flashcard/bloc/countor/counter_bloc.dart';
import 'package:flashcard/presentation/screens/auth/sign_in.dart';
import 'package:flashcard/utils/app_strings.dart';
import 'package:flashcard/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812), // Kích thước thiết kế (thường từ Figma)
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MultiBlocProvider(
          providers: [BlocProvider(create: (context) => CounterBloc())],
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: AppStrings.appName,
            theme: ThemeData(primarySwatch: Colors.blue),
            home: SignInScreen(),
            routes: AppRoutes.routes,
          ),
        );
      },
    );
  }
}
