import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uitestingscreen/landing_page_custom_drawer.dart';
import 'package:uitestingscreen/screens/about_us_screen.dart';
import 'package:uitestingscreen/screens/landing_screen_cart.dart';
import 'package:uitestingscreen/screens/landing_screen_profile.dart';
import 'package:uitestingscreen/utils/colors.dart';
import 'package:uitestingscreen/screens/home_screen.dart';
import 'package:uitestingscreen/screens/landing_feed_screen.dart';
import 'package:uitestingscreen/screens/my_purchase_screen.dart';
import 'package:uitestingscreen/utils/image_path.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _MyLandingPageScreen();
}

List<String> menuTitleList = [
  'Home',
  'My Purchase',
  'Feed',
  'Cart',
  'Profile',
];

List<String> imageAssetPath = [
  imagesLpHome,
  imagesMyPurchase,
  imagesFeed,
  imagesShoppingBag,
  imagesProfileLp
];

Widget appBarTitle = Container();
int selectedIndex = 0;

class _MyLandingPageScreen extends State<LandingPage> {
  Widget setTitleAppBarLandingPage() {
    if (selectedIndex == 0) {
      return Image.asset(
        imagesBaseLogoLp,
        height: 36.h,
        width: 120.h,
      );
    } else if (selectedIndex == 1) {
      return Text(
        'My Purchase',
        style: TextStyle(
            color: Colors.black, fontSize: 20.sp, fontWeight: FontWeight.w500),
      );
    } else if (selectedIndex == 2) {
      return Text(
        'Feeds',
        style: TextStyle(
            color: Colors.black, fontSize: 20.sp, fontWeight: FontWeight.w500),
      );
    } else if (selectedIndex == 3) {
      return Text(
        'Cart',
        style: TextStyle(
            color: Colors.black, fontSize: 20.sp, fontWeight: FontWeight.w500),
      );
    } else {
      return Text(
        'Profile',
        style: TextStyle(
            color: Colors.black, fontSize: 20.sp, fontWeight: FontWeight.w500),
      );
    }
  }



  List<GButton> _bottomNavigationButtonField(
      int numberOfItems, List<String> imagePath, List<String> title) {
    return List<GButton>.generate(numberOfItems, (int index) {
      return GButton(
        icon: Icons.abc_sharp,
        leading: Image.asset(
          imagePath[index],
          color: selectedIndex == index ? buttonColor : Colors.black,
        ),
        text: title[index],
      );
    });
  }

  @override
  void initState() {
    super.initState();
    appBarTitle = setTitleAppBarLandingPage();
  }

  static const List<Widget> _bottomNavigationPage = <Widget>[
    HomePage(),
    MyPurchasePage(),
    LandingPageFeedPage(),
    LandingScreenCart(),
    LandingScreenProfile(),
  ];

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
        body: _bottomNavigationPage.elementAt(selectedIndex),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.fromLTRB(16.w, 0.0, 16.w, 20.h),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5.r)),
              color: Colors.white,
            ),
            child: SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10.h),
                child: GNav(
                  activeColor: buttonColor,
                  tabBorderRadius: 10.r,
                  gap: 3,
                  textStyle: TextStyle(
                    color: buttonColor,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w100,
                  ),
                  iconSize: 18,
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
                  duration: const Duration(milliseconds: 400),
                  tabBackgroundColor: buttonBgColor,
                  tabs: _bottomNavigationButtonField(
                      imageAssetPath.length, imageAssetPath, menuTitleList),
                  selectedIndex: selectedIndex,
                  onTabChange: (index) {
                    setState(() {
                      selectedIndex = index;
                      appBarTitle = setTitleAppBarLandingPage();
                    });
                  },
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
