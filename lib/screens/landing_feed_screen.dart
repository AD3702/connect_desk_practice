import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uitestingscreen/widgets/app_bar_widget.dart';
import 'package:uitestingscreen/utils/colors.dart';
import 'package:uitestingscreen/screens/landing_screen.dart';
import 'package:uitestingscreen/main.dart';
import 'package:uitestingscreen/widgets/feed_post.dart';

class LandingPageFeedPage extends StatefulWidget {
  const LandingPageFeedPage({Key? key}) : super(key: key);

  @override
  State<LandingPageFeedPage> createState() => _LandingPageFeedPageState();
}

class _LandingPageFeedPageState extends State<LandingPageFeedPage> {
  Widget _createPost() => Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipOval(
            child: Image.asset(
              'assets/images/profile_pic.png',
              height: 33.h,
              width: 33.h,
            ),
          ),
          Expanded(
            flex: 60,
            child: Container(
              margin: EdgeInsets.only(left: 9.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'John Doe',
                    style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                  Text(
                    'Graphics Designer From Kuwait',
                    style: TextStyle(
                        fontSize: 9.sp,
                        fontWeight: FontWeight.w100,
                        color: labelTextGridColor),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 40,
            child: OutlinedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: buttonColor,
                side: const BorderSide(
                  color: buttonColor,
                  width: 1,
                ),
              ),
              child: Text(
                'Create Post',
                style: TextStyle(color: Colors.white, fontSize: 12.sp),
              ),
            ),
          ),
        ],
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GetLandingPageAppBar(appBarTitle: appBarTitle),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: paddingMain),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5.r)),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 5.r,
                      color: Colors.black.withOpacity(.1),
                    )
                  ],
                ),
                margin: EdgeInsets.only(top: 5.h),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
                  child: _createPost(),
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 5,
                itemBuilder: (context, index) {
                  return const FeedPost();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
