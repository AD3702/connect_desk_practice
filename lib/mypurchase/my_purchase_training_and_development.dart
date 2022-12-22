import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uitestingscreen/utils/colors.dart';
import '../widgets/my_purchase_custom_widget.dart';

class MyPurchaseTrainingAndDevelopment extends StatefulWidget {
  const MyPurchaseTrainingAndDevelopment({Key? key}) : super(key: key);

  @override
  State<MyPurchaseTrainingAndDevelopment> createState() => _MyPurchaseTrainingAndDevelopmentState();
}

bool upcomingSelected = true;
bool pastSelected = false;

class _MyPurchaseTrainingAndDevelopmentState extends State<MyPurchaseTrainingAndDevelopment> {
  selectedStyle() => ElevatedButton.styleFrom(
    backgroundColor: buttonColor,
    side: const BorderSide(
      color: buttonColor,
      width: 1,
    ),
  );

  unSelectedStyle() => ElevatedButton.styleFrom(
    side: const BorderSide(
      color: buttonColor,
      width: 1,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(16.w, 22.h, 16.w, 0),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(right: 9.w),
                  child: OutlinedButton(
                    onPressed: () {
                      setState(() {
                        upcomingSelected = true;
                        pastSelected = false;
                      });
                    },
                    style:
                    upcomingSelected ? selectedStyle() : unSelectedStyle(),
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 12.h),
                      child: Text(
                        'Upcoming',
                        style: TextStyle(
                            color:
                            upcomingSelected ? Colors.white : buttonColor,
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
                      setState(() {
                        upcomingSelected = false;
                        pastSelected = true;
                      });
                    },
                    style: pastSelected ? selectedStyle() : unSelectedStyle(),
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 12.h),
                      child: Text(
                        'Past',
                        style: TextStyle(
                            color: pastSelected ? Colors.white : buttonColor,
                            fontSize: 16.sp),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 20.h),
              child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: upcomingSelected ? 2 : 5,
                itemBuilder: (context, index) {
                  return upcomingSelected
                      ? const MyPurchaseMarketWidget(
                    showButtons: true,
                    showCompleteIncomplete: false,
                    courseTitle: 'Training & Development',
                  )
                      : const MyPurchaseMarketWidget(
                    showButtons: false,
                    showCompleteIncomplete: true,
                    courseTitle: 'Training & Development',
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
