import 'package:flutter/material.dart';
import 'package:uitestingscreen/utils/image_path.dart';
import 'package:uitestingscreen/widgets/social_sign_in.dart';
import '../utils/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../main.dart';

class GetStartedScreen extends StatefulWidget {
  const GetStartedScreen({super.key});

  @override
  State<GetStartedScreen> createState() => _MyGetStartedScreen();
}

class _MyGetStartedScreen extends State<GetStartedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: paddingMain.w),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 160.h),
                  child: Image.asset(imagesBaseLogo),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(10.0.h, 100.0.h, 10.0.h, 0.0),
                  width: double.infinity,
                  child: ElevatedButton(
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll<Color>(
                        buttonColor,
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(context,
                          "/sign_in_page", (Route<dynamic> route) => false);
                    },
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0.0, 14.0.h, 0.0, 14.0.h),
                      child: Text(
                        'Sign In Now',
                        style: TextStyle(
                          fontSize: 19.sp,
                        ),
                      ),
                    ),
                  ),
                ),
                //OR Social Sign In Line
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(top: 30.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          height: 0.8.h,
                          color: labelTextColor,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0.w),
                        child: Text(
                          'or',
                          style: TextStyle(
                            color: headTextColor,
                            fontSize: 14.sp,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 0.8.h,
                          color: labelTextColor,
                        ),
                      )
                    ],
                  ),
                ),
                //Social Sign Up
                const SocialSignIn(),
                //Create Account
                Container(
                  margin: EdgeInsets.only(top: 30.h),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account?",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16.sp,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamedAndRemoveUntil(context,
                              "/sign_up_page", (Route<dynamic> route) => false);
                        },
                        child: Text(
                          'Create Account',
                          style: TextStyle(
                            fontSize: 16.sp,
                            color: buttonColor,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                //Privacy Policy
                Container(
                  margin: EdgeInsets.only(top: 50.h),
                  child: Text(
                    'Terms & Condition | Privacy Policy',
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: headTextColor,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
