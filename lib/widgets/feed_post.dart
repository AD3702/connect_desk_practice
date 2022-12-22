import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uitestingscreen/utils/image_path.dart';
import 'package:uitestingscreen/utils/colors.dart';

class FeedPost extends StatefulWidget {
  const FeedPost({Key? key}) : super(key: key);

  @override
  State<FeedPost> createState() => _FeedPostState();
}

class _FeedPostState extends State<FeedPost> {
  Widget _videoWidget() => Padding(
        padding: EdgeInsets.only(top: 17.h),
        child: Stack(
          alignment: Alignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(5.r),
              child: SizedBox(
                height: 170.h,
                child: Image.asset(
                  imagesHomeBannerImage,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.play_circle_fill,
                color: playButtonColor,
                size: 35.r,
              ),
            ),
          ],
        ),
      );

  Widget _likeShareCommentWidget() => Padding(
        padding: EdgeInsets.only(top: 20.h),
        child: Row(
          children: [
            Row(
              children: [
                Image.asset(
                  imagesComment,
                  height: 19.h,
                  width: 19.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.w),
                  child: Text(
                    '35',
                    style: TextStyle(
                      color: headTextColor,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                )
              ],
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 15.w),
                child: Row(
                  children: [
                    Image.asset(
                      imagesLike,
                      height: 19.h,
                      width: 19.h,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8.w),
                      child: Text(
                        '347',
                        style: TextStyle(
                          color: buttonColor,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Image.asset(
              imagesShare,
              height: 17.h,
              width: 17.h,
            ),
          ],
        ),
      );

  Widget _commentWidget() => Padding(
        padding: EdgeInsets.only(top: 31.h),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              imagesProfilePic,
              height: 29.h,
              width: 29.w,
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(left: 15.w),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(5.r),
                  ),
                  border: Border.all(
                    color: subTextColor,
                    width: 0.1,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(6.w, 5.h, 5.w, 9.h),
                  child: Text(
                    'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam',
                    style: TextStyle(
                      color: labelTextGridColor,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      );

  Widget _addCommentBoxWidget()=>Padding(
    padding: EdgeInsets.symmetric(vertical: 27.h),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          imagesProfilePic,
          height: 29.h,
          width: 29.w,
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.only(left: 13.w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(1.r),
              ),
              color: addCommentBgColor
            ),
            child: Padding(
              padding: EdgeInsets.fromLTRB(6.w, 5.h, 5.w, 9.h),
              child: Text(
                'Add a comment...',
                style: TextStyle(
                  color: headTextColor,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w100,
                ),
              ),
            ),
          ),
        )
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15.h),
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
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 15.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(2.r),
                    child: Image.asset(
                      imagesProfilePic,
                      height: 53.h,
                      width: 53.h,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.fromLTRB(15.h, 7.h, 0, 0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'John Doe',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5.h),
                            child: Text(
                              '1h ago',
                              style: TextStyle(
                                color: labelTextGridColor,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w100,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: 7.h),
                      child: Image.asset(imagesMoreMenu))
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 17.h),
              child: Text(
                'Lorem Ipsum is simply dummy text of the printing & typesetting industry.',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w100,
                ),
              ),
            ),
            _videoWidget(),
            _likeShareCommentWidget(),
            _commentWidget(),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.fromLTRB(0.0, 7.h, 2.w, 0),
                child: Text(
                  '5d ago',
                  style: TextStyle(
                    color: labelTextGridColor,
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w100,
                  ),
                ),
              ),
            ),
            _addCommentBoxWidget(),
          ],
        ),
      ),
    );
  }
}
