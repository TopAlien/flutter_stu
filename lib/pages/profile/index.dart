import 'package:flutter/material.dart';
import 'package:flutter_card/entry/user_entity.dart';
import 'package:flutter_card/http/api.dart';
import 'package:flutter_card/http/dio_util.dart';
import 'package:flutter_card/router/go_router.dart';
import 'package:go_router/go_router.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>
    with AutomaticKeepAliveClientMixin {
  UserEntity userInfo = UserEntity();

  void getUserInfo() async {
    final res = await DioUtil().request<UserEntity>(API.user_info);

    setState(() {
      userInfo = res;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    getUserInfo();
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);

    final children = [
      Text("姓名：${userInfo.name}"),
      Text("年龄：${userInfo.age}"),
      ElevatedButton(
        onPressed: () {
          context.goNamed(AppRoutes.unknown.name);
        },
        child: const Text("go to unknow"),
      ),
      ElevatedButton(
        onPressed: () {
          context.goNamed(AppRoutes.about.name);
        },
        child: const Text("go to aboutRoute"),
      )
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("我的"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: children,
        ),
      ),
    );
  }
}
