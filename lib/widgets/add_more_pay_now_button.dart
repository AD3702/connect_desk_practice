import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../utils/colors.dart';

class AddMorePayNowButton extends StatefulWidget {
  const AddMorePayNowButton({Key? key}) : super(key: key);

  @override
  State<AddMorePayNowButton> createState() => _AddMorePayNowButtonState();
}

selectedStyle() => ElevatedButton.styleFrom(
  backgroundColor: buttonColor,
  side: const BorderSide(
    color: buttonColor,
    width: 1,
  ),
);

unSelectedStyle() => ElevatedButton.styleFrom(
  side: const BorderSide(
    color: headTextColor,
    width: 1,
  ),
);

class _AddMorePayNowButtonState extends State<AddMorePayNowButton>{
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(right: 9.w),
            child: OutlinedButton(
              onPressed: () {

              },
              style:unSelectedStyle(),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 12.h),
                child: Text(
                  'Add More',
                  style: TextStyle(
                      color: headTextColor,
                      fontSize: 16.sp),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 9.w),
            child: OutlinedButton(
              onPressed: () {

              },
              style: selectedStyle(),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 12.h),
                child: Text(
                  'Pay Now',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.sp),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
