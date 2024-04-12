import 'package:flutter/material.dart';
import 'package:flutter_card/pages/about/index.dart';
import 'package:flutter_card/pages/home/index.dart';
import 'package:flutter_card/pages/login/index.dart';
import 'package:flutter_card/pages/profile/index.dart';
import 'package:flutter_card/pages/unkonw/index.dart';
import 'package:flutter_card/router/middleware/auth.dart';
import 'package:get/get.dart';

abstract class AppRoutes {
  /// 首页
  static String homeRoute = '/home';

  /// 我的
  static String profileRoute = '/profile';

  /// 关于我们
  static String aboutRoute = '/about';

  /// 登录
  static String loginRoute = '/login';

  /// 页面找不到
  static String unknownRoute = "/notfound";
}

abstract class GetPageConfig {
  static List<GetPage> pages = [
    GetPage(
      name: AppRoutes.homeRoute,
      page: () => const HomePage(),
    ),
    GetPage(
      name: AppRoutes.profileRoute,
      page: () => const ProfilePage(),
      middlewares: [AuthMiddleWare()],
    ),
    GetPage(
      name: AppRoutes.aboutRoute,
      page: () => const AboutPage(),
      transition: Transition.zoom,
      middlewares: [AuthMiddleWare()],
    ),
    GetPage(
      name: AppRoutes.loginRoute,
      page: () => const LoginPage(),
    )
  ];

  static GetPage unknownRoute = GetPage(
    name: AppRoutes.unknownRoute,
    page: () => const UnknownPage(),
  );
}

class BottomNavigationConfig {
  static List<Widget> tabPages = [
    const HomePage(),
    const AboutPage(),
    const ProfilePage(),
  ];

  static List<BottomNavigationBarItem> tabItems = [
    const BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: "首页",
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.account_balance_wallet_outlined),
      label: "关于",
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.accessibility),
      label: "我的",
    ),
  ];
}
