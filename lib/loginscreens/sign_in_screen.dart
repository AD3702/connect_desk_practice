import 'package:flutter/material.dart';
import 'package:uitestingscreen/loginscreens/forgot_password_screen.dart';
import 'package:uitestingscreen/widgets/social_sign_in.dart';
import 'package:uitestingscreen/widgets/text_from_field.dart';
import '../utils/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../main.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _MySignInPageState();
}

class _MySignInPageState extends State<SignInPage> {
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
                  Form(
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 40.h),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Sign In',
                              style: TextStyle(
                                color: signUpTextColor,
                                fontSize: 25.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        TextFormFieldWidget(
                          label: 'Email ID',
                          showDecorationBox: true,
                          obscureText: false,
                          textInputType: TextInputType.emailAddress,
                          marginTopTextField: 10.h,
                          labelTextSize: 14.sp,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 20.h),
                              child: Text(
                                'Password',
                                style: TextStyle(
                                  color: labelTextColor,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 20.h),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const ForgotPasswordScreen(),
                                      ),
                                    );
                                  },
                                  child: Text(
                                    'Forgot Password?',
                                    style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      color: buttonColor,
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 65.h,
                          child: Opacity(
                            opacity: 0.8,
                            child: Container(
                              margin: const EdgeInsets.only(top: 10),
                              child: TextFormField(
                                obscureText: true,
                                textInputAction: TextInputAction.next,
                                autocorrect: false,
                                keyboardType: TextInputType.visiblePassword,
                                style: (TextStyle(
                                  color: Colors.black,
                                  fontSize: 16.sp,
                                )),
                                decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  filled: true,
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(5.0.w),
                                  ),
                                ),
                              ),
                            ),
                          ),
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
                      onPressed: () {
                        Navigator.pushNamedAndRemoveUntil(context,
                            "/hidden_drawer", (Route<dynamic> route) => false);
                      },
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(0.0, 14.0.h, 0.0, 14.0.h),
                        child: Text(
                          'Sign In',
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
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: Container(
          margin: EdgeInsets.only(bottom: 40.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Don't have an account?",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.sp,
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(context, "/sign_up_page",
                      (Route<dynamic> route) => false);
                },
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                    fontSize: 16.sp,
                    color: buttonColor,
                    decoration: TextDecoration.underline,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
