import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uitestingscreen/loginscreens/verification_screen.dart';
import '../widgets/app_bar_widget.dart';
import '../utils/colors.dart';
import '../main.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _MyForgotPasswordState();
}

class _MyForgotPasswordState extends State<ForgotPasswordScreen> {
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
        resizeToAvoidBottomInset: true,
        appBar: const GetAppBar(title: 'Reset Password'),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: paddingMain.w),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 35.h),
                    child: Text(
                      "Enter your registered email address we'll send a reset password link on you email click and verify now",
                      style: TextStyle(
                        color: labelSubTextColor,
                        fontSize: 17.sp,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30.h),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Email ID',
                        style: TextStyle(
                          color: labelTextColor,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 65.h,
                    child: Opacity(
                      opacity: 0.8,
                      child: Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: TextFormField(
                          textInputAction: TextInputAction.next,
                          autocorrect: false,
                          keyboardType: TextInputType.emailAddress,
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
          ),
        ),
        bottomNavigationBar: Padding(
          padding: MediaQuery.of(context).viewInsets,
          child: Container(
            margin: EdgeInsets.fromLTRB(28.0.w, 0.0, 27.0.w, 24.0.h),
            width: double.infinity,
            child: ElevatedButton(
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll<Color>(
                  buttonColor,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const VerificationScreen(),
                  ),
                );
              },
              child: Padding(
                padding: EdgeInsets.fromLTRB(0.0, 14.0.h, 0.0, 14.0.h),
                child: Text(
                  'Send Me Reset Link',
                  style: TextStyle(
                    fontSize: 19.sp,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
