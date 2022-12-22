import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:uitestingscreen/screens/contact_us_screen.dart';
import 'package:uitestingscreen/screens/landing_screen.dart';
import 'package:uitestingscreen/landing_page_custom_drawer.dart';
import 'package:uitestingscreen/screens/home_screen.dart';
import 'package:uitestingscreen/screens/languages_screen_flutter.dart';
import 'package:uitestingscreen/screens/privacy_policy_screen.dart';
import 'package:uitestingscreen/screens/terms_and_conditions_screen.dart';
import 'screens/about_us_screen.dart';

class HiddenDrawer extends StatefulWidget {
  const HiddenDrawer({Key? key}) : super(key: key);

  @override
  State<HiddenDrawer> createState() => _HiddenDrawerState();
}

const List<Widget> _navigationDrawerPages = <Widget>[
  HomePage(),
  AboutUsPage(),
  LanguagesScreen(),
  ContactUsScreen(),
  PrivacyPolicyScreen(),
  TermsAndCondtionsScreen(),
];

SimpleHiddenDrawerController controller =
    SimpleHiddenDrawerController as SimpleHiddenDrawerController;

class _HiddenDrawerState extends State<HiddenDrawer> {
  @override
  Widget build(BuildContext context) {
    return SimpleHiddenDrawer(
      screenSelectedBuilder: (position, controller) {
        Widget currentScreen = selectedIndexDrawer == 0 && selectedIndex == 0
            ? const LandingPage()
            : _navigationDrawerPages.elementAt(selectedIndexDrawer);
        return Scaffold(
          body: SafeArea(
            child: currentScreen,
          ),
        );
      },
      menu: const Menu(),
    );
  }
}

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  void didChangeDependencies() {
    controller = SimpleHiddenDrawerController.of(context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return const LandingPageDrawer();
  }
}
