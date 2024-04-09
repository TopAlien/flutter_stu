import 'package:flutter/material.dart';
import 'package:flutter_card/pages/home/index.dart';
import 'package:flutter_card/pages/profile/index.dart';
import 'package:flutter_card/pages/about/index.dart';
import 'package:flutter_card/pages/unkonw/index.dart';
import 'package:get/get.dart';

abstract class GetPagePath {
  static String homeRoute = '/home';

  static String profileRoute = '/profile';

  static String aboutRoute = '/about';
}

abstract class GetPageConfig {
  static List<GetPage> pages = [
    GetPage(name: GetPagePath.homeRoute, page: () => const HomePage()),
    GetPage(name: GetPagePath.profileRoute, page: () => const ProfilePage()),
    GetPage(
        name: GetPagePath.aboutRoute,
        page: () => const AboutPage(),
        transition: Transition.zoom),
  ];

  static GetPage unknownRoute =
      GetPage(name: '/notfound', page: () => const UnknownPage());
}

class BottomNavigationConfig {
  static List<Widget> tabPages = [
    const HomePage(),
    const AboutPage(),
    const ProfilePage(),
  ];

  static List<BottomNavigationBarItem> tabItems = [
    const BottomNavigationBarItem(
      icon: Icon(
        Icons.home,
      ),
      label: "首页",
    ),
    const BottomNavigationBarItem(
      icon: Icon(
        Icons.account_balance_wallet_outlined,
      ),
      label: "关于",
    ),
    const BottomNavigationBarItem(
      icon: Icon(
        Icons.accessibility,
      ),
      label: "我的",
    ),
  ];
}
