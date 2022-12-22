import 'package:flutter/material.dart';
import 'package:uitestingscreen/utils/image_path.dart';
import '../utils/colors.dart';
import '../hidden_drawer.dart';

class GetAppBar extends StatelessWidget with PreferredSizeWidget {
  const GetAppBar({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: (const TextStyle(color: Colors.black)),
      ),
      iconTheme: const IconThemeData(color: Colors.black),
      backgroundColor: backgroundColor,
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class GetLandingPageAppBar extends StatelessWidget with PreferredSizeWidget {
  const GetLandingPageAppBar({super.key, required this.appBarTitle});

  final Widget appBarTitle;

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
