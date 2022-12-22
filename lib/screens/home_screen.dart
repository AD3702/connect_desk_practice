import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uitestingscreen/utils/image_path.dart';
import 'package:uitestingscreen/widgets/app_bar_widget.dart';
import 'package:uitestingscreen/screens/landing_screen.dart';
import 'package:uitestingscreen/main.dart';
import 'package:uitestingscreen/utils/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _MyHomePage();
}

List<String> gridTitle = [
  'Training & Courses',
  'Sessions',
  'Conferences',
  'Exhibitions'
];
List<String> gridSubTitle = [
  'Lorem ipsum dolor sit amet, consectetur adipiscing.'
];

class _MyHomePage extends State<HomePage> {
  List<Widget> _bottomNavigationButtonField(int numberOfItems) {
    return List<Widget>.generate(
      numberOfItems,
      (int index) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5.r)),
            color: Colors.white,
          ),
          child: Padding(
            padding: EdgeInsets.fromLTRB(10.w, 10.h, 6.w, 17.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  gridTitle[index],
                  style: TextStyle(
                    color: headTextColor,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 6.h),
                  child: Text(
                    gridSubTitle[0],
                    style: TextStyle(
                      color: labelTextGridColor,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(context) {
    return GestureDetector(
      onTap: () {},
      child: Scaffold(
        appBar: GetLandingPageAppBar(
          appBarTitle: appBarTitle,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: paddingMain),
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5.r)),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(15.w, 8.h, 10.w, 8.h),
                      child: Row(
                        children: [
                          Text(
                            'Search here...',
                            style: TextStyle(
                              color: searchTextColor,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w100,
                            ),
                          ),
                          Expanded(
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Image.asset(
                                imagesIcSearch,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5.r)),
                      color: buttonColor.withOpacity(0.8),
                    ),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(14.w, 8.h, 10.w, 5.h),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 40,
                            child: Text(
                              'Platform for Online Courses, Conferences and Exhibitions',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 60,
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Image.asset(
                                imagesHomePageHeaderImage,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30.h),
                    child: Text(
                      'Categories',
                      style: TextStyle(
                        color: headTextColor,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 25.h),
                    child: GridView(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisExtent: 100.h,
                          crossAxisCount: 2,
                          mainAxisSpacing: 13.h,
                          crossAxisSpacing: 13.w),
                      children: _bottomNavigationButtonField(4),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(top: 20.h),
                    child: Stack(
                      alignment: Alignment.centerLeft,
                      children: [
                        SizedBox(
                          width: double.infinity,
                          child: Image.asset(
                            imagesHomeBannerImage,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Row(
                          children: [
                            Expanded(
                              flex: 65,
                              child: Container(
                                margin: EdgeInsets.only(left: 12.w),
                                child: Text(
                                  'Connecting People Digitally, With Connect',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14.sp),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 35,
                              child: Container(),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30.h),
                    child: Text(
                      'Why Connect For Virtual Meetings?',
                      style: TextStyle(
                        color: headTextColor,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 25.h),
                    child: GridView(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisExtent: 160.h,
                          crossAxisCount: 2,
                          mainAxisSpacing: 13.h,
                          crossAxisSpacing: 13.w),
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.r)),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(10.w, 10.h, 6.w, 17.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipOval(
                                  child: Image.asset(
                                    imagesProfilePic,
                                    height: 50.h,
                                    width: 50.h,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 6.h),
                                  child: Text(
                                    'Example Tile',
                                    style: TextStyle(
                                      color: headTextColor,
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 6.h),
                                  child: Text(
                                    gridSubTitle[0],
                                    style: TextStyle(
                                      color: labelTextGridColor,
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w100,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.r)),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(10.w, 10.h, 6.w, 17.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipOval(
                                  child: Image.asset(
                                    imagesProfilePic,
                                    height: 50.h,
                                    width: 50.h,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 6.h),
                                  child: Text(
                                    'Example Tile',
                                    style: TextStyle(
                                      color: headTextColor,
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 6.h),
                                  child: Text(
                                    gridSubTitle[0],
                                    style: TextStyle(
                                      color: labelTextGridColor,
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w100,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5.r)),
                      color: buttonColor.withOpacity(0.8),
                    ),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(14.w, 15.h, 10.w, 10.h),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 50,
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Image.asset(
                                imagesHomeLpRegister,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 10,
                            child: Container(),
                          ),
                          Expanded(
                            flex: 40,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Become a Trainer/ Speaker',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Container(
                                  height: 35.h,
                                  margin: EdgeInsets.only(top: 20.h),
                                  width: double.infinity,
                                  child: OutlinedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        side: const BorderSide(
                                          color: Colors.white,
                                          width: 1,
                                        ),
                                        backgroundColor: homePageRegisterColor),
                                    child: Text(
                                      'Register Now',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 12.sp),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
