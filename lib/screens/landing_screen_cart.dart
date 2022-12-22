import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uitestingscreen/utils/colors.dart';
import 'package:uitestingscreen/widgets/add_more_pay_now_button.dart';
import 'package:uitestingscreen/widgets/my_purchase_cart.dart';
import '../main.dart';
import '../widgets/app_bar_widget.dart';
import 'landing_screen.dart';

class LandingScreenCart extends StatefulWidget {
  const LandingScreenCart({Key? key}) : super(key: key);

  @override
  State<LandingScreenCart> createState() => _LandingScreenCartState();
}

class DashLineView extends StatelessWidget {
  final double dashHeight;
  final double dashWith;
  final Color dashColor;
  final double fillRate; // [0, 1] totalDashSpace/totalSpace
  final Axis direction;

  const DashLineView(
      {super.key,
      this.dashHeight = 1,
      this.dashWith = 3,
      this.dashColor = Colors.black,
      this.fillRate = 0.5,
      this.direction = Axis.horizontal});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final boxSize = direction == Axis.horizontal
            ? constraints.constrainWidth()
            : constraints.constrainHeight();
        final dCount = (boxSize * fillRate / dashWith).floor();
        return Flex(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: direction,
          children: List.generate(dCount, (_) {
            return SizedBox(
              width: direction == Axis.horizontal ? dashWith : dashHeight,
              height: direction == Axis.horizontal ? dashHeight : dashWith,
              child: DecoratedBox(
                decoration: BoxDecoration(color: dashColor),
              ),
            );
          }),
        );
      },
    );
  }
}

class _LandingScreenCartState extends State<LandingScreenCart> {
  Widget _orderSummary(Color color, String title, String price) => Container(
        margin: EdgeInsets.only(top: 15.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                title,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w100,
                ),
              ),
            ),
            Text(
              price,
              style: TextStyle(
                color: color,
                fontSize: 12.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GetLandingPageAppBar(appBarTitle: appBarTitle),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: paddingMain),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListView.builder(
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 5,
                itemBuilder: (context, index) {
                  return const MyPurchaseCartWidget(
                      courseTitle: 'Training & Development');
                },
              ),
              Container(
                margin: EdgeInsets.only(top: 32.h),
                child: Text(
                  'Order Summary',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              _orderSummary(
                  Colors.black, 'Online Marketing Course By John Doe', '15 KWD'),
              _orderSummary(
                  Colors.black, 'Online Marketing Course By John Doe', '15 KWD'),
              Container(
                margin: EdgeInsets.only(top: 15.h),
                child: const DashLineView(
                  fillRate: 0.7,
                ),
              ),
              _orderSummary(buttonColor, 'Online Products', '30 KWD'),
              Container(
                margin: EdgeInsets.only(top: 22.h),
                child: const AddMorePayNowButton(),
              ),
            ],
          ),
        ),
      ),
      // bottomNavigationBar: const AddMorePayNowButton(),
    );
  }
}
