import 'package:flutter/material.dart';
import 'package:uitestingscreen/widgets/social_sign_in.dart';
import 'package:uitestingscreen/widgets/text_from_field.dart';
import '../utils/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../main.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _MySignUpPageState();
}

class _MySignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: paddingMain.w),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 40.h),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          color: signUpTextColor,
                          fontSize: 25.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  Form(
                    child: Column(
                      children: [
                        TextFormFieldWidget(
                          label: 'Full Name',
                          showDecorationBox: true,
                          obscureText: false,
                          textInputType: TextInputType.text,
                          marginTopTextField: 10.h,
                          labelTextSize: 14.sp,
                        ),
                        TextFormFieldWidget(
                          label: 'Phone',
                          showDecorationBox: true,
                          obscureText: false,
                          textInputType: TextInputType.number,
                          marginTopTextField: 10.h,
                          labelTextSize: 14.sp,
                        ),
                        TextFormFieldWidget(
                          label: 'Email ID',
                          showDecorationBox: true,
                          obscureText: false,
                          textInputType: TextInputType.emailAddress,
                          marginTopTextField: 10.h,
                          labelTextSize: 14.sp,
                        ),
                        TextFormFieldWidget(
                          label: 'Password',
                          showDecorationBox: true,
                          obscureText: true,
                          textInputType: TextInputType.visiblePassword,
                          marginTopTextField: 10.h,
                          labelTextSize: 14.sp,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(10.0.h, 25.0.h, 10.0.h, 0.0),
                    width: double.infinity,
                    child: ElevatedButton(
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll<Color>(
                          buttonColor,
                        ),
                      ),
                      onPressed: () {},
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(0.0, 14.0.h, 0.0, 14.0.h),
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            fontSize: 19.sp,
                          ),
                        ),
                      ),
                    ),
                  ),
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
                  const SocialSignIn(),
                  Container(
                    margin: EdgeInsets.only(top: 30.h),
                    child: Row(
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
                            Navigator.pushNamedAndRemoveUntil(
                                context,
                                "/sign_in_page",
                                (Route<dynamic> route) => false);
                          },
                          child: Text(
                            'Sign in',
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: buttonColor,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
