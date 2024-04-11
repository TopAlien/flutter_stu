import 'package:flutter/material.dart';
import 'package:flutter_card/routes/index.dart';
import 'package:get/get.dart';

class AuthMiddleWare extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    /// 它以 RouteSettings 作为重定向结果。或者给它 null 并且不会有重定向。
    return RouteSettings(name: GetPagePath.loginRoute);
  }
}
