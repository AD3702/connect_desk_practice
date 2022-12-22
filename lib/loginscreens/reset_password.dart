import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/services.dart';
import 'package:uitestingscreen/widgets/app_bar_widget.dart';
import '../utils/colors.dart';
import '../main.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _MyResetPasswordState();
}

class _MyResetPasswordState extends State<ResetPasswordScreen> {
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
        appBar: const GetAppBar(title: 'Enter Password'),
        body: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.light
              .copyWith(statusBarColor: Theme.of(context).primaryColor),
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: paddingMain.w),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 35.h),
                      child: Text(
                        "Enter your new password here",
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
                          'New Password',
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
                            obscureText: true,
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
                    Container(
                      margin: EdgeInsets.only(top: 30.h),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Confirm Password',
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
                            obscureText: true,
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
                Navigator.pushNamedAndRemoveUntil(
                    context, "/sign_in_page", (Route<dynamic> route) => false);
              },
              child: Padding(
                padding: EdgeInsets.fromLTRB(0.0, 14.0.h, 0.0, 14.0.h),
                child: Text(
                  'Confirm',
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
