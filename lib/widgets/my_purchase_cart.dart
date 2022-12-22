import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:uitestingscreen/utils/colors.dart';
import 'package:uitestingscreen/utils/image_path.dart';

DateTime dateTime = DateTime.now();
String monthName = DateFormat.MMMM().format(dateTime);
String currentDate = '${dateTime.day} $monthName ${dateTime.year}';
String currentTime = DateFormat("h:mma").format(dateTime);

bool isComplete = false;

class MyPurchaseCartWidget extends StatelessWidget {
  const MyPurchaseCartWidget({Key? key, required this.courseTitle})
      : super(key: key);

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
                Align(
                    alignment: Alignment.centerRight,
                    child: Image.asset(
                      imagesCancelButtonCart,
                      height: 17.5.h,
                      width: 17.5.w,
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5.r),
                      child: Image.asset(
                        imagesProfilePic,
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
                              child: Row(
                                children: [
                                  Text(
                                    'By',
                                    style: TextStyle(
                                        color: labelTextGridColor,
                                        fontSize: 11.sp,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 2.w),
                                    child: Text(
                                      'John Doe',
                                      style: TextStyle(
                                          color: headTextColor,
                                          fontSize: 11.sp,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 9.w),
                                    child: Icon(
                                      Icons.star,
                                      size: 5.5.r,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 2.w),
                                    child: Text(
                                      '3.9',
                                      style: TextStyle(
                                          color: headTextColor,
                                          fontSize: 11.sp,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 10.h),
                              child: Text(
                                '$courseTitle / Face to face courses',
                                style: TextStyle(
                                    color: unSelectedTabColor,
                                    fontSize: 11.sp,
                                    fontWeight: FontWeight.w100),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
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
                        '15 KWD',
                        style: TextStyle(
                          color: buttonColor,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w500,
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
    );
  }
}
