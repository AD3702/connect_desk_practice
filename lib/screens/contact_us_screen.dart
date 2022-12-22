import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uitestingscreen/main.dart';
import 'package:uitestingscreen/screens/landing_screen.dart';
import 'package:uitestingscreen/widgets/text_from_field.dart';
import '../utils/colors.dart';
import '../widgets/app_bar_widget.dart';

class ContactUsScreen extends StatefulWidget {
  const ContactUsScreen({Key? key}) : super(key: key);

  @override
  State<ContactUsScreen> createState() => _ContactUsScreenState();
}

class _ContactUsScreenState extends State<ContactUsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GetLandingPageAppBar(
        appBarTitle: appBarTitle,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: paddingMain),
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
              label: 'Email Address',
              showDecorationBox: true,
              obscureText: false,
              textInputType: TextInputType.emailAddress,
              marginTopTextField: 10.h,
              labelTextSize: 14.sp,
            ),
            TextFormFieldWidget(
              label: 'Your Message here',
              showDecorationBox: true,
              obscureText: false,
              textInputType: TextInputType.text,
              marginTopTextField: 10.h,
              labelTextSize: 14.sp,
              containerHeight: 204.h,
              maxLines: 5,
            ),
          ],
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
            onPressed: () {},
            child: Padding(
              padding: EdgeInsets.fromLTRB(0.0, 14.0.h, 0.0, 14.0.h),
              child: Text(
                'Submit',
                style: TextStyle(
                  fontSize: 19.sp,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
