import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:uitestingscreen/utils/colors.dart';
import 'package:uitestingscreen/utils/image_path.dart';

DateTime dateTime = DateTime.now();
String monthName = DateFormat.MMMM().format(dateTime);
String currentDate = '${dateTime.day} $monthName ${dateTime.year}';
String currentTime = DateFormat("h:mma").format(dateTime);

bool isComplete = false;

class MyPurchaseMarketWidget extends StatelessWidget {
  const MyPurchaseMarketWidget(
      {Key? key,
      required this.showButtons,
      required this.showCompleteIncomplete,
      required this.courseTitle})
      : super(key: key);

  final bool showButtons;
  final bool showCompleteIncomplete;
  final String courseTitle;

  completeTextStyle() => TextStyle(
      color: completeColor, fontSize: 14.sp, fontWeight: FontWeight.w400);

  cancelledTextStyle() => TextStyle(
      color: cancelledColor, fontSize: 14.sp, fontWeight: FontWeight.w400);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(top: 10.h),
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5.r)),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 10.r,
                color: Colors.black.withOpacity(.1),
              )
            ],
          ),
          child: Padding(
            padding: EdgeInsets.fromLTRB(11.w, 11.h, 10.w, 15.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5.r),
                      child: Image.asset(
                        'assets/images/profile_pic.png',
                        height: 75.h,
                        width: 75.h,
                      ),
                    ),
                    Flexible(
                      flex: 5,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(16.w, 11.h, 0, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Online Marketing Training For Product Selling',
                              style: TextStyle(
                                  color: headTextColor,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w700),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10.h),
                              child: Text(
                                '${courseTitle} / Face to face courses',
                                style: TextStyle(
                                    color: unSelectedTabColor,
                                    fontSize: 11.sp,
                                    fontWeight: FontWeight.w100),
                              ),
                            ),
                            Visibility(
                              visible: showCompleteIncomplete,
                              child: Container(
                                margin: EdgeInsets.only(top: 7.h),
                                child: isComplete
                                    ? Text(
                                        'Complete',
                                        style: completeTextStyle(),
                                      )
                                    : Text(
                                        'Cancelled',
                                        style: cancelledTextStyle(),
                                      ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 22.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(
                        child: ClipOval(
                          child: Image.asset(
                            imagesProfilePic,
                            height: 35.h,
                            width: 35.h,
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 5,
                        child: Padding(
                          padding: EdgeInsets.only(left: 10.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'John Doe',
                                style: TextStyle(
                                    color: headTextColor,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w400),
                              ),
                              Row(
                                children: [
                                  RatingBar.builder(
                                    initialRating: 4.5,
                                    minRating: 1,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemCount: 5,
                                    ignoreGestures: true,
                                    itemSize: 12,
                                    itemBuilder: (context, _) => const Icon(
                                      Icons.star,
                                      color: buttonColor,
                                    ),
                                    onRatingUpdate: (rating) {},
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 7.w),
                                    child: Text(
                                      '4.5',
                                      style: TextStyle(
                                        color: buttonColor,
                                        fontWeight: FontWeight.w100,
                                        fontSize: 12.sp,
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 17.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        currentDate,
                        style: TextStyle(
                          color: headTextColor,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                      Text(
                        currentTime,
                        style: TextStyle(
                          color: headTextColor,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                      Text(
                        '01 Hour 30 Minutes',
                        style: TextStyle(
                          color: headTextColor,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w100,
                        ),
                      )
                    ],
                  ),
                ),
                Visibility(
                  visible: showButtons,
                  child: Container(
                    margin: EdgeInsets.only(top: 20.h),
                    child: Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(right: 9.w),
                            child: OutlinedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                side: const BorderSide(
                                  color: unSelectedTabColor,
                                  width: 1,
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(vertical: 12.h),
                                child: Text(
                                  'Cancel',
                                  style: TextStyle(
                                      color: headTextColor, fontSize: 12.sp),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(left: 9.w),
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
                                padding: EdgeInsets.symmetric(vertical: 12.h),
                                child: Text(
                                  'Join',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12.sp),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
