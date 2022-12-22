import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';
import 'package:uitestingscreen/utils/colors.dart';
import 'package:uitestingscreen/screens/landing_screen.dart';
import 'package:uitestingscreen/mypurchase/my_purchase_all.dart';
import 'package:uitestingscreen/mypurchase/my_purchase_exhibitions.dart';
import 'package:uitestingscreen/mypurchase/my_purchase_conferences.dart';
import 'package:uitestingscreen/mypurchase/my_purchase_sessions.dart';
import 'package:uitestingscreen/mypurchase/my_purchase_training_and_development.dart';
import 'package:uitestingscreen/hidden_drawer.dart';
import 'package:uitestingscreen/utils/image_path.dart';

class MyPurchasePage extends StatefulWidget {
  const MyPurchasePage({Key? key}) : super(key: key);

  @override
  State<MyPurchasePage> createState() => _MyPurchasePageState();
}


bool upcomingSelected = true;
bool pastSelected = false;

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

class _MyPurchasePageState extends State<MyPurchasePage> {
  Widget _textStyle(String tabTitle) => Text(
        tabTitle,
        style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w500),
      );

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
          appBar: AppBar(
            iconTheme: const IconThemeData(color: Colors.black),
            backgroundColor: backgroundColor,
            elevation: 0,
            leading: Builder(
              builder: (BuildContext context) {
                return IconButton(
                  icon: Image.asset(imagesLandingPageDrawer),
                  onPressed: () {
                    controller.toggle();
                  },
                );
              },
            ),
            title: appBarTitle,
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(kToolbarHeight),
              child: TabBar(
                isScrollable: true,
                unselectedLabelColor: unSelectedTabColor,
                unselectedLabelStyle:
                    const TextStyle(color: unSelectedTabColor),
                labelColor: buttonColor,
                indicator: DotIndicator(
                  color: buttonColor,
                  distanceFromCenter: 16,
                  radius: 3,
                  paintingStyle: PaintingStyle.fill,
                ),
                tabs: [
                  Tab(
                    child: _textStyle('All'),
                  ),
                  Tab(child: _textStyle('Training & Development')),
                  Tab(
                    child: _textStyle('Session'),
                  ),
                  Tab(
                    child: _textStyle('Conferences'),
                  ),
                  Tab(
                    child: _textStyle('Exhibitions'),
                  ),
                ],
              ),
            ),
          ),
          body: const TabBarView(
            children: <Widget>[
              MyPurchaseAll(),
              MyPurchaseTrainingAndDevelopment(),
              MyPurchaseSessions(),
              MyPurchaseConferences(),
              MyPurchaseExhibitions()
            ],
          )),
    );
  }
}
