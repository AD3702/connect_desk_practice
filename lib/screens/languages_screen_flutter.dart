import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uitestingscreen/screens/landing_screen.dart';
import 'package:uitestingscreen/utils/colors.dart';

import '../widgets/app_bar_widget.dart';

class LanguagesScreen extends StatefulWidget {
  const LanguagesScreen({Key? key}) : super(key: key);

  @override
  State<LanguagesScreen> createState() => _LanguagesScreenState();
}

enum Languages { english, arabic }

class _LanguagesScreenState extends State<LanguagesScreen> {
  Languages? _language = Languages.english;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GetLandingPageAppBar(
        appBarTitle: appBarTitle,
      ),
      body: Column(
        children: <Widget>[
          ListTile(
            title: Text(
              'English',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 18.sp,
              ),
            ),
            trailing: Radio<Languages>(
              value: Languages.english,
              groupValue: _language,
              activeColor: buttonColor,
              onChanged: (Languages? value) {
                setState(() {
                  _language = value;
                });
              },
            ),
          ),
          ListTile(
            title: Text(
              'Arabic',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 18.sp,
              ),
            ),
            trailing: Radio<Languages>(
              value: Languages.arabic,
              groupValue: _language,
              activeColor: buttonColor,
              onChanged: (Languages? value) {
                setState(() {
                  _language = value;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
