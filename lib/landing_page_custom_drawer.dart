import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uitestingscreen/hidden_drawer.dart';
import 'package:uitestingscreen/screens/landing_screen.dart';
import 'package:uitestingscreen/utils/colors.dart';
import 'package:uitestingscreen/utils/image_path.dart';

class LandingPageDrawer extends StatefulWidget {
  const LandingPageDrawer({Key? key}) : super(key: key);

  @override
  State<LandingPageDrawer> createState() => _LandingPageDrawerState();
}

List<String> menuTitleList = [
  'Home',
  'About Us',
  'Language',
  'Contact Us',
  'Privacy Policy',
  'Terms & Conditions'
];

List<String> imageAssetPath = [
  'assets/images/lp_home.png',
  'assets/images/about_us.png',
  'assets/images/languages.png',
  'assets/images/contact_us.png',
  'assets/images/privacy_policy.png',
  'assets/images/terms_and_conditions.png'
];

int selectedIndexDrawer = 0;

class _LandingPageDrawerState extends State<LandingPageDrawer> {
  Widget setTitleAppBarDrawer() {
    if (selectedIndexDrawer == 0) {
      return Image.asset(
        imagesBaseLogoLp,
        height: 36.h,
        width: 120.h,
      );
    } else if (selectedIndexDrawer == 1) {
      return Text(
        'About Us',
        style: TextStyle(
            color: Colors.black, fontSize: 20.sp, fontWeight: FontWeight.w500),
      );
    } else if (selectedIndexDrawer == 2) {
      return Text(
        'Language',
        style: TextStyle(
            color: Colors.black, fontSize: 20.sp, fontWeight: FontWeight.w500),
      );
    } else if (selectedIndexDrawer == 3) {
      return Text(
        'Contact Us',
        style: TextStyle(
            color: Colors.black, fontSize: 20.sp, fontWeight: FontWeight.w500),
      );
    } else if (selectedIndexDrawer == 4) {
      return Text(
        'Privacy Policy',
        style: TextStyle(
            color: Colors.black, fontSize: 20.sp, fontWeight: FontWeight.w500),
      );
    } else {
      return Text(
        'Terms & Condition',
        style: TextStyle(
            color: Colors.black, fontSize: 20.sp, fontWeight: FontWeight.w500),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 16.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 65.h),
              height: 60.h,
              width: 60.h,
              child: Image.asset(imagesProfilePic),
            ),
            Container(
              margin: EdgeInsets.only(top: 18.h),
              child: Text(
                'Jenny Doe',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  fontSize: 18.sp,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 8.h),
              child: Text(
                'jennydoe@email.com',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: labelTextColor,
                  fontSize: 16.sp,
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                padding: EdgeInsets.zero,
                itemCount: menuTitleList.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(top: 31.h),
                    child: InkWell(
                      onTap: () {
                        setState(
                          () {
                            selectedIndexDrawer = index;
                            selectedIndex = 0;
                            appBarTitle = setTitleAppBarDrawer();
                            controller.toggle();
                            appBarTitle = setTitleAppBarDrawer();
                          },
                        );
                      },
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 19.w),
                            child: Image.asset(
                              imageAssetPath[index],
                            ),
                          ),
                          Text(
                            menuTitleList[index],
                            style: TextStyle(
                                color: headTextColor, fontSize: 15.sp),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: EdgeInsets.only(bottom: 40.h),
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(context,
                        "/get_started_page", (Route<dynamic> route) => false);
                  },
                  child: Text(
                    'Logout',
                    style: TextStyle(
                      color: buttonColor,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
