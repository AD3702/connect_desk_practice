import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uitestingscreen/main.dart';
import 'package:uitestingscreen/screens/landing_screen.dart';
import 'package:uitestingscreen/utils/colors.dart';
import 'package:uitestingscreen/utils/image_path.dart';
import 'package:uitestingscreen/widgets/app_bar_widget.dart';

class AboutUsPage extends StatefulWidget {
  const AboutUsPage({super.key});

  @override
  State<AboutUsPage> createState() => _MyAboutUsPage();
}

class _MyAboutUsPage extends State<AboutUsPage> {
  Widget _textWidget(
          String text, Color color, double fontSize, FontWeight fontWeight) =>
      Text(
        text,
        style:
            TextStyle(color: color, fontSize: fontSize, fontWeight: fontWeight),
      );

  @override
  Widget build(context) {
    return Scaffold(
      appBar: GetLandingPageAppBar(
        appBarTitle: appBarTitle,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: paddingMain, vertical: 30.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  margin: EdgeInsets.fromLTRB(0, 80.h, 0, 36.h),
                  child: Image.asset(
                    imagesBaseLogo,
                    width: 214.h,
                    height: 62.h,
                  ),
                ),
              ),
              Container(
                color: Colors.black.withOpacity(0.1),
                width: double.infinity,
                height: 1.h,
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 36.h, 0, 14.h),
                child: _textWidget(
                    'Lorem ipsum', headTextColor, 16.sp, FontWeight.w500),
              ),
              Container(
                color: buttonColor,
                width: 40.w,
                height: 1.h,
              ),
              Container(
                margin: EdgeInsets.only(top: 28.h),
                child: _textWidget(
                    'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, cons ectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, cons ectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.',
                    aboutUsColor,
                    12.sp,
                    FontWeight.w100),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 20.h, 0, 14.h),
                child: _textWidget(
                    'Lorem ipsum', headTextColor, 16.sp, FontWeight.w500),
              ),
              Container(
                color: buttonColor,
                width: 40.w,
                height: 1.h,
              ),
              Container(
                margin: EdgeInsets.only(top: 28.h),
                child: _textWidget(
                    'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.',
                    aboutUsColor,
                    12.sp,
                    FontWeight.w100),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
