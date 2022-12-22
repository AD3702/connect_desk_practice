import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/services.dart';
import 'package:otp_text_field/style.dart';
import 'package:uitestingscreen/loginscreens/reset_password.dart';
import 'package:uitestingscreen/widgets/app_bar_widget.dart';
import 'package:otp_text_field/otp_field.dart';
import '../utils/colors.dart';
import 'package:uitestingscreen/main.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _MyVerificationState();
}

class _MyVerificationState extends State<VerificationScreen> {
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
        appBar: const GetAppBar(title: 'Verify'),
        body: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.light
              .copyWith(statusBarColor: Theme.of(context).primaryColor),
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: paddingMain.w),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 35.h),
                      child: Text(
                        "We've sent you a verification code on your email address. please verify your email address",
                        style: TextStyle(
                          color: labelSubTextColor,
                          fontSize: 17.sp,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      // color: Colors.amber,
                      margin: EdgeInsets.only(top: 50.h),
                      child: OTPTextField(
                        length: 6,
                        width: MediaQuery.of(context).size.width,
                        fieldWidth: 30,
                        style: const TextStyle(fontSize: 17),
                        textFieldAlignment: MainAxisAlignment.spaceAround,
                        fieldStyle: FieldStyle.underline,
                        onCompleted: (pin) {
                          print("Completed: $pin");
                        },
                      ),
                      // OtpTextField(
                      //   keyboardType: TextInputType.number,
                      //   numberOfFields: 6,
                      //
                      //   borderColor: HexColor(unSelectedOtpFieldColor),
                      //   focusedBorderColor: HexColor(buttonColor),
                      //   showFieldAsBox: false,
                      //   fieldWidth: 30.h,
                      //   borderWidth: 5.h,
                      //
                      //   // margin: EdgeInsets.only(left: 10.w),
                      //   onSubmit: (String verificationCode) {},
                      // ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 55.h),
                      child: Text(
                        "Didn't received a code?",
                        style: TextStyle(
                          color: labelSubTextColor,
                          fontSize: 14.sp,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'RESEND',
                              style: TextStyle(
                                color: buttonColor,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w100,
                              ),
                            ),
                          ),
                          Text(
                            'Code in 00:30',
                            style: TextStyle(
                              color: labelTextColor,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w100,
                            ),
                          ),
                        ],
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
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll<Color>(
                  buttonColor,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.fromLTRB(0.0, 14.0.h, 0.0, 14.0.h),
                child: Text(
                  'Verify',
                  style: TextStyle(
                    fontSize: 19.sp,
                  ),
                ),
              ),
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (BuildContext context) {
                  return const ResetPasswordScreen();
                }));
              },
            ),
          ),
        ),
      ),
    );
  }
}
