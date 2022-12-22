import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uitestingscreen/utils/colors.dart';

class TextFormFieldWidget extends StatelessWidget {
  TextFormFieldWidget({
    Key? key,
    required this.label,
    required this.showDecorationBox,
    required this.obscureText,
    required this.textInputType,
    required this.marginTopTextField,
    required this.labelTextSize,
    this.containerHeight,
    this.maxLines,
  }) : super(key: key);

  final String label;
  final bool obscureText;
  final bool showDecorationBox;
  final TextInputType textInputType;
  final double marginTopTextField;
  final double labelTextSize;
  double? containerHeight = 65.h;
  int? maxLines = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 20.h),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              label,
              style: TextStyle(
                color: labelTextColor,
                fontSize: labelTextSize,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
        SizedBox(
          height: containerHeight,
          child: Opacity(
            opacity: 0.8,
            child: Container(
              margin: EdgeInsets.only(top: marginTopTextField),
              child: TextFormField(
                textInputAction: TextInputAction.next,
                autocorrect: false,
                obscureText: obscureText,
                // maxLines: obscureText ? null : maxLines,
                keyboardType: textInputType,
                style: (TextStyle(
                  color: Colors.black,
                  fontSize: 16.sp,
                )),
                decoration: showDecorationBox
                    ? InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(5.0.w),
                        ),
                      )
                    : null,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
