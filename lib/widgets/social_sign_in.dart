import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/colors.dart';
import '../utils/image_path.dart';

class SocialSignIn extends StatefulWidget {
  const SocialSignIn({Key? key}) : super(key: key);

  @override
  State<SocialSignIn> createState() => _SocialSignInState();
}

class _SocialSignInState extends State<SocialSignIn> {
  //Facebook Sign In Widget
  Widget _facebookSignIn() => Container(
        margin: EdgeInsets.only(right: 5.w),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(40.w),
          child: Material(
            elevation: 5,
            child: Container(
              height: 48.0.h,
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.fromLTRB(18.w, 8.h, 27.w, 8.h),
                child: Row(
                  children: [
                    Image.asset(imagesFacebookLogo),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      child: Container(
                        height: double.infinity,
                        color: Colors.black,
                        width: 0.5,
                      ),
                    ),
                    Text(
                      'Facebook',
                      style: TextStyle(
                        color: buttonTextColorGoogleFacebook,
                        fontSize: 14.sp,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );

  //Google Sign In Widget
  Widget _googleSignIn() => Container(
        margin: EdgeInsets.only(left: 5.w),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(40.w),
          child: Material(
            elevation: 5,
            child: Container(
              height: 48.0.h,
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.fromLTRB(18.w, 8.h, 27.w, 8.h),
                child: Row(
                  children: [
                    Image.asset(imagesGoogle),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      child: Container(
                        height: double.infinity,
                        color: Colors.black,
                        width: 0.5,
                      ),
                    ),
                    Text(
                      'Google',
                      style: TextStyle(
                        color: buttonTextColorGoogleFacebook,
                        fontSize: 14.sp,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );

  //Apple Sign In Widget
  Widget _signInWithApple() => Container(
        margin: EdgeInsets.fromLTRB(11.w, 25.h, 11.w, 8.h),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(40.w),
          child: Material(
            elevation: 5,
            child: Container(
              height: 48.0.h,
              color: Colors.black,
              child: Padding(
                padding: EdgeInsets.fromLTRB(20.w, 10.h, 0.w, 10.h),
                child: Row(
                  children: [
                    Image.asset(imagesApple),
                    Expanded(
                      child: Align(
                        alignment: Alignment.center,
                        child: Transform.translate(
                          offset: Offset(-20.w, 0),
                          child: Text(
                            'Sign in with Apple',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.sp,
                            ),
                          ),
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

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 20.h),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Row(
              children: [
                Flexible(
                  flex: 1,
                  child: _facebookSignIn(),
                ),
                Flexible(
                  flex: 1,
                  child: _googleSignIn(),
                )
              ],
            ),
          ),
        ),
        _signInWithApple(),
      ],
    );
  }
}
