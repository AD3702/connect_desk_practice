import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uitestingscreen/utils/colors.dart';
import 'package:uitestingscreen/utils/image_path.dart';
import '../main.dart';
import '../widgets/app_bar_widget.dart';
import '../widgets/text_from_field.dart';
import 'landing_screen.dart';

class LandingScreenProfile extends StatefulWidget {
  const LandingScreenProfile({Key? key}) : super(key: key);

  @override
  State<LandingScreenProfile> createState() => _LandingScreenProfileState();
}

class _LandingScreenProfileState extends State<LandingScreenProfile> {
  Widget _outLinedButton(String buttonText) => Container(
        margin: EdgeInsets.only(top: 20.h),
        width: double.infinity,
        child: OutlinedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              side: const BorderSide(color: buttonColor, width: 2),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.r),
              )),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 19.h),
            child: Text(
              buttonText,
              style: TextStyle(color: buttonColor, fontSize: 16.sp),
            ),
          ),
        ),
      );

  Widget _addWorkEducationLayout(String widgetImage, String widgetQuestion,
          String buttonText, bool isVisible, double textMargin) =>
      Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 12.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(6.r)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 10.r,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 25.h),
          child: Column(
            children: [
              Visibility(
                visible: isVisible,
                child: Image.asset(
                  widgetImage,
                  height: 95.h,
                  width: 125.w,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: textMargin),
                child: Text(
                  widgetQuestion,
                  style: TextStyle(
                    color: headTextColor,
                    fontSize: 17.sp,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 19.h,
                ),
                child: OutlinedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: buttonColor,
                    side: const BorderSide(
                      color: buttonColor,
                      width: 1,
                    ),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 8.h, horizontal: 19.w),
                    child: Text(
                      '+ Add $buttonText',
                      style: TextStyle(color: Colors.white, fontSize: 12.sp),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );

  Widget _profileDetailWidget() => SizedBox(
        height: 182.h,
        child: Stack(
          children: [
            Image.asset(
              imagesProfileBanner,
              fit: BoxFit.cover,
              width: double.infinity,
              height: 122.h,
            ),
            Positioned(
              bottom: 0,
              left: 20.w,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    imagesProfilePhoto,
                    height: 110.h,
                    width: 100.w,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 50.h),
                    child: Column(
                      children: [
                        Text(
                          '500',
                          style: TextStyle(fontSize: 12.sp),
                        ),
                        Text(
                          'Followers',
                          style: TextStyle(fontSize: 12.sp),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 50.h, 47.w, 0),
                    child: Column(
                      children: [
                        Text(
                          '79',
                          style: TextStyle(fontSize: 12.sp),
                        ),
                        Text(
                          'Following',
                          style: TextStyle(fontSize: 12.sp),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      );

  Widget _textWidget(
          String text, Color color, double fontSize, FontWeight fontWeight) =>
      Text(
        text,
        style:
            TextStyle(color: color, fontSize: fontSize, fontWeight: fontWeight),
      );

  Widget _locationProfile() => Container(
        margin: EdgeInsets.fromLTRB(3.w, 20.h, 0, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 30,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _textWidget(
                      "Country", labelTextGridColor, 16.sp, FontWeight.w100),
                  _textWidget(
                      "Kuwait", signUpTextColor, 14.sp, FontWeight.w500),
                ],
              ),
            ),
            Expanded(
              flex: 70,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _textWidget(
                      "Location", labelTextGridColor, 16.sp, FontWeight.w100),
                  _textWidget("Sagher Al Nesafi St Ardiya, Kuwait",
                      signUpTextColor, 14.sp, FontWeight.w500),
                ],
              ),
            ),
          ],
        ),
      );

  Widget _trainingCourses() => Container(
        margin: EdgeInsets.only(top: 20.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 59.h,
              width: 59.w,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Image.asset(
                imagesLogo,
                height: 36.h,
                width: 36.w,
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(left: 14.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 2.h),
                      child: _textWidget(
                        'Training Coach',
                        signUpTextColor,
                        16.sp,
                        FontWeight.w500,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 2.h),
                      child: _textWidget(
                        'Connect Online Courses',
                        subTextColor,
                        12.sp,
                        FontWeight.w100,
                      ),
                    ),
                    _textWidget(
                      'Feb 2020 - Present .  1 Yr 7 mos',
                      subTextColor,
                      12.sp,
                      FontWeight.w100,
                    )
                  ],
                ),
              ),
            ),
            Image.asset(
              imagesShare,
              height: 17.h,
              width: 17.w,
            ),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GetLandingPageAppBar(appBarTitle: appBarTitle),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _profileDetailWidget(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: paddingMain),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(3.w, 16.h, 0, 0),
                    child: _textWidget(
                        'Jenny Doe', Colors.black, 20.sp, FontWeight.w700),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(3.w, 3.h, 0, 0),
                    child: _textWidget('Senior Training Coach At Connect',
                        labelTextGridColor, 12.sp, FontWeight.w100),
                  ),
                  Container(
                      padding: EdgeInsets.fromLTRB(3.w, 20.h, 0, 0),
                      child: _textWidget('About John Doe', headTextColor, 16.sp,
                          FontWeight.w500)),
                  Container(
                    padding: EdgeInsets.fromLTRB(3.w, 11.h, 0, 0),
                    child: _textWidget(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. asdasdada',
                        labelTextGridColor,
                        12.sp,
                        FontWeight.w100),
                  ),
                  _locationProfile(),
                  _outLinedButton('Edit Profile'),
                  Container(
                    padding: EdgeInsets.fromLTRB(3.w, 32.h, 0, 0),
                    child: _textWidget(
                        'Experience', headTextColor, 16.sp, FontWeight.w500),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 23.h),
                    child: ListView.builder(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 2,
                      itemBuilder: (context, index) {
                        return _trainingCourses();
                      },
                    ),
                  ),
                  _outLinedButton('Add Experience'),
                  _addWorkEducationLayout(
                      '', 'Tell Us More About Your Self', 'Details', false, 0),
                  _addWorkEducationLayout(imagesProfileScreenWorkImage,
                      'Where do you currently work?', 'Experience', true, 25.h),
                  _addWorkEducationLayout(imagesProfileScreenEducationImage,
                      'Where do you Educated?', 'Education', true, 25.h),
                  Container(
                    margin: EdgeInsets.only(top: 30.h),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            'Contact',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Image.asset(
                          imagesShare,
                          height: 17.h,
                          width: 17.h,
                        )
                      ],
                    ),
                  ),
                  TextFormFieldWidget(
                    label: 'Email ID',
                    showDecorationBox: false,
                    obscureText: false,
                    textInputType: TextInputType.emailAddress,
                    marginTopTextField: 0,
                    labelTextSize: 12.sp,
                  ),
                  TextFormFieldWidget(
                    label: 'Phone',
                    showDecorationBox: false,
                    obscureText: false,
                    textInputType: TextInputType.number,
                    marginTopTextField: 0,
                    labelTextSize: 12.sp,
                  ),
                  TextFormFieldWidget(
                    label: 'Website',
                    showDecorationBox: false,
                    obscureText: false,
                    textInputType: TextInputType.url,
                    marginTopTextField: 0,
                    labelTextSize: 12.sp,
                  ),
                  _outLinedButton('Change Password')
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
