import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodtofit/screens/main/home.dart';
import 'package:foodtofit/screens/main/diary.dart';
import 'package:foodtofit/screens/main/plans.dart';
import 'package:foodtofit/screens/main/me.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class LandingPage extends StatefulWidget {

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  PersistentTabController _controller;

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: ImageIcon(AssetImage('assets/home-svgrepo-com-2@2x.png'),size: 25),
        title: 'Home',
        textStyle: TextStyle(
          fontFamily: 'helvatica',
          height: 0.1,
          fontSize: ScreenUtil().setSp(11.0)
        ),
        activeColorPrimary: Color(0xFF19688D),
        inactiveColorPrimary: Color(0xFF686868),
      ),
      PersistentBottomNavBarItem(
        icon: ImageIcon(AssetImage('assets/diary-svgrepo-com-4@2x.png'),size: 25),
        title: 'Diary',
        textStyle: TextStyle(
          fontFamily: 'helvatica',
          height: 0.1,
          fontSize: ScreenUtil().setSp(11.0)
        ),
        activeColorPrimary: Color(0xFF19688D),
        inactiveColorPrimary: Color(0xFF686868),
      ),
      PersistentBottomNavBarItem(
        icon: ImageIcon(AssetImage('assets/document-svgrepo-com-3@2x.png'),size: 45),
        title: 'Plans',
        textStyle: TextStyle(
          fontFamily: 'helvatica',
          height: 0.1,
          fontSize: ScreenUtil().setSp(11.0)
        ),
        activeColorPrimary: Color(0xFF19688D),
        inactiveColorPrimary: Color(0xFF686868),
      ),
      PersistentBottomNavBarItem(
        icon: ImageIcon(AssetImage('assets/profile-svgrepo-com@2x.png'),size: 25),
        title: 'Me',
        textStyle: TextStyle(
          fontFamily: 'helvatica',
          height: 0.1,
          fontSize: ScreenUtil().setSp(11.0)
        ),
        activeColorPrimary: Color(0xFF19688D),
        inactiveColorPrimary: Color(0xFF686868),
      ),
    ];
  }

  List<Widget> _buildScreens() {
    return [
      HomeScr(),
      DiaryScr(),
      PlansScr(),
      MeScr(),
    ];
  }

  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      items: _navBarsItems(),
      screens: _buildScreens(),
      onItemSelected: (i){
        setState(() {});
      },
      backgroundColor: Colors.white,
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      stateManagement: true,
      hideNavigationBarWhenKeyboardShows: true,
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.once,
      itemAnimationProperties: ItemAnimationProperties(
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation(
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle: NavBarStyle.style6,
    );
  }
}