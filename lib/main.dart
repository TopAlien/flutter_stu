import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_card/router/go_router.dart';

void initSystem() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown],
  );
}

void main() {
  initSystem();

  /// 灰色主题
  ///
  // runApp(
  //   const ColorFiltered(
  //     colorFilter: ColorFilter.mode(Colors.white, BlendMode.color),
  //     child: MyApp(),
  //   ),
  // );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        brightness: Brightness.light,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        useMaterial3: true,
      ),
      routerConfig: router,
      // home: const BottomNavigationWidget(),
    );
  }
}
