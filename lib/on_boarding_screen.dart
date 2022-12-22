import 'package:flutter/material.dart';
import 'utils/colors.dart';
import 'main.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _MyOnBoardingPage();
}

int pageIndex = 0;
double indicatorSlider1 = 1.0;
double indicatorSlider2 = 0.2;
double indicatorSlider3 = 0.2;
PageController _pageController =
    PageController(initialPage: 0, keepPage: false);

class _MyOnBoardingPage extends State<OnBoardingPage> {
  List<Widget> _onBoardingScreens(int numberOfItems) {
    return List<Widget>.generate(numberOfItems, (int index) {
      return Container(
        margin: EdgeInsets.only(top: 30.h),
        child: Image.asset(
          'assets/images/on_boarding_screen_image.png',
          fit: BoxFit.cover,
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: paddingMain.w),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Opacity(
                opacity: pageIndex == 2 ? 0 : 1,
                child: Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        _pageController.animateToPage(
                          2,
                          duration: const Duration(milliseconds: 800),
                          curve: Curves.easeIn,
                        );
                        Future.delayed(const Duration(milliseconds: 800), () {
                          setState(() {
                            pageIndex = 2;
                            indicatorSlider1 = 0.2;
                            indicatorSlider2 = 0.2;
                            indicatorSlider3 = 1.0;
                          });
                        });
                      });
                    },
                    child: Text(
                      "Skip",
                      style: TextStyle(
                          color: headTextColor,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 400.h,
                width: double.infinity,
                child: PageView(
                  controller: _pageController,
                  children: _onBoardingScreens(3),
                  onPageChanged: (index) {
                    setState(() {
                      pageIndex = index;
                      if (index == 0) {
                        indicatorSlider1 = 1.0;
                        indicatorSlider2 = 0.2;
                        indicatorSlider3 = 0.2;
                      } else if (index == 1) {
                        indicatorSlider1 = 0.2;
                        indicatorSlider2 = 1.0;
                        indicatorSlider3 = 0.2;
                      } else {
                        indicatorSlider1 = 0.2;
                        indicatorSlider2 = 0.2;
                        indicatorSlider3 = 1.0;
                      }
                    });
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Opacity(
                    opacity: indicatorSlider1,
                    child: Container(
                      width: 8.0.w,
                      height: 8.0.h,
                      margin: EdgeInsets.fromLTRB(0.0, 0.h, 11.h, 0.h),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: buttonColor,
                      ),
                    ),
                  ),
                  Opacity(
                    opacity: indicatorSlider2,
                    child: Container(
                      width: 8.0.w,
                      height: 8.0.h,
                      margin: EdgeInsets.fromLTRB(0.0, 0.h, 11.h, 0.h),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: buttonColor,
                      ),
                    ),
                  ),
                  Opacity(
                    opacity: indicatorSlider3,
                    child: Container(
                      width: 8.0.w,
                      height: 8.0.h,
                      margin: EdgeInsets.fromLTRB(0.0, 0.h, 0.h, 0.h),
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: buttonColor,
                      ),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: EdgeInsets.fromLTRB(0.0.w, 40.0.h, 33.0.w, 0.0),
                  child: Text(
                    'Online Marketing Training For Product Selling',
                    style: TextStyle(
                      fontSize: 26.sp,
                      color: headTextColor,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: EdgeInsets.only(top: 20.h),
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna.',
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: subTextColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.fromLTRB(28.0.w, 0.0, 27.0.w, 24.0.h),
        width: double.infinity,
        child: ElevatedButton(
          style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll<Color>(
              buttonColor,
            ),
          ),
          onPressed: pageIndex == 2
              ? () {
                  Navigator.pushNamedAndRemoveUntil(context,
                      "/get_started_page", (Route<dynamic> route) => false);
                }
              : () {
                  pageIndex++;
                  _pageController.animateToPage(
                    pageIndex,
                    duration: const Duration(milliseconds: 400),
                    curve: Curves.easeIn,
                  );
                  Future.delayed(const Duration(milliseconds: 400), () {
                    setState(() {
                      if (pageIndex == 0) {
                        indicatorSlider1 = 1.0;
                        indicatorSlider2 = 0.2;
                        indicatorSlider3 = 0.2;
                      } else if (pageIndex == 1) {
                        indicatorSlider1 = 0.2;
                        indicatorSlider2 = 1.0;
                        indicatorSlider3 = 0.2;
                      } else {
                        indicatorSlider1 = 0.2;
                        indicatorSlider2 = 0.2;
                        indicatorSlider3 = 1.0;
                      }
                    });
                  });
                },
          child: Padding(
            padding: EdgeInsets.fromLTRB(0.0, 14.0.h, 0.0, 14.0.h),
            child: pageIndex == 2
                ? Text(
                    'Get Started',
                    style: TextStyle(
                      fontSize: 19.sp,
                    ),
                  )
                : Text(
                    'Next',
                    style: TextStyle(
                      fontSize: 19.sp,
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}
