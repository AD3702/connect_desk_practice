import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uitestingscreen/utils/colors.dart';
import 'package:uitestingscreen/loginscreens/forgot_password_screen.dart';
import 'package:uitestingscreen/loginscreens/get_started_screen.dart';
import 'package:uitestingscreen/hidden_drawer.dart';
import 'package:uitestingscreen/loginscreens/reset_password.dart';
import 'package:uitestingscreen/loginscreens/sign_in_screen.dart';
import 'package:uitestingscreen/loginscreens/sign_up_screen.dart';
import 'package:uitestingscreen/loginscreens/verification_screen.dart';
import 'on_boarding_screen.dart';
import 'package:flutter/services.dart';

double paddingMain = 16.0;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(const MyApp());
  });
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (BuildContext context, Widget? child) {
        return AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.light
              .copyWith(statusBarColor: Theme.of(context).primaryColor),
          child: MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            initialRoute: '/',
            routes: {
              '/': (context) => const OnBoardingPage(),
              '/get_started_page': (context) => const GetStartedScreen(),
              '/sign_in_page': (context) => const SignInPage(),
              '/sign_up_page': (context) => const SignUpPage(),
              '/forgot_password': (context) => const ForgotPasswordScreen(),
              '/verification': (context) => const VerificationScreen(),
              '/reset_password': (context) => const ResetPasswordScreen(),
              '/hidden_drawer': (context) => const HiddenDrawer(),
            },
            theme: ThemeData(
                scaffoldBackgroundColor: backgroundColor,
                primarySwatch: Colors.blue,
                visualDensity: VisualDensity.adaptivePlatformDensity,
                fontFamily: 'GTWalsheimPro'),
            // home: const OnBoardingPage(),
          ),
        );
      },
    );
  }
}

