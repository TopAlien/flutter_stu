import 'package:flutter/material.dart';
import 'package:flutter_card/pages/about/index.dart';
import 'package:flutter_card/pages/home/index.dart';
import 'package:flutter_card/pages/login/index.dart';
import 'package:flutter_card/pages/profile/index.dart';
import 'package:flutter_card/pages/tab/index.dart';
import 'package:flutter_card/pages/unkonw/index.dart';
import 'package:go_router/go_router.dart';

enum AppRoutes { home, about, profile, unknown, login }

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) =>
          const BottomNavigationWidget(),
      routes: <RouteBase>[
        GoRoute(
          path: AppRoutes.home.name,
          name: 'home',
          builder: (BuildContext context, GoRouterState state) =>
              const HomePage(),
        ),
        GoRoute(
          path: AppRoutes.about.name,
          name: 'about',
          builder: (BuildContext context, GoRouterState state) =>
              const AboutPage(),
        ),
        GoRoute(
          path: AppRoutes.profile.name,
          name: 'profile',
          builder: (BuildContext context, GoRouterState state) =>
              const ProfilePage(),
        ),
        GoRoute(
          path: AppRoutes.login.name,
          name: 'login',
          builder: (BuildContext context, GoRouterState state) =>
              const LoginPage(),
        ),
        GoRoute(
          path: AppRoutes.unknown.name,
          name: 'unknown',
          builder: (BuildContext context, GoRouterState state) =>
              const UnknownPage(),
        ),
      ],
    ),
  ],
);

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
