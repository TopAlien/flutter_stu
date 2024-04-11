import 'package:auto_animated/auto_animated.dart';
import 'package:flutter/material.dart';
import 'package:flutter_card/entry/card_list_entity.dart';
import 'package:flutter_card/http/api.dart';
import 'package:flutter_card/http/dio_util.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with AutomaticKeepAliveClientMixin {
  List<CardListEntity> list = [];

  void getCardList() async {
    final res = await DioUtil().request<List<CardListEntity>>(API.list_card);

    setState(() {
      list = res;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    getCardList();
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("首页"),
      ),
      body: SafeArea(
        child: LiveList(
          showItemInterval: const Duration(milliseconds: 150),
          showItemDuration: const Duration(milliseconds: 350),
          padding: const EdgeInsets.all(16),
          reAnimateOnVisibility: true,
          scrollDirection: Axis.vertical,
          itemCount: list.length,
          itemBuilder: animationItemBuilder(
            (index) => buildListTile(index),
            padding: const EdgeInsets.symmetric(vertical: 8),
          ),
        ),
      ),
    );
  }

  ListTile buildListTile(int index) {
    return ListTile(
      title: Text("${list[index].name} - ${list[index].fs}"),
      subtitle: Text("${list[index].createTime}"),
    );
  }

  Widget Function(
    BuildContext context,
    int index,
    Animation<double> animation,
  ) animationItemBuilder(Widget Function(int index) child,
          {EdgeInsets padding = EdgeInsets.zero}) =>
      (
        BuildContext context,
        int index,
        Animation<double> animation,
      ) =>
          FadeTransition(
            opacity: Tween<double>(
              begin: 0,
              end: 1,
            ).animate(animation),
            child: SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(0, -0.1),
                end: Offset.zero,
              ).animate(animation),
              child: Padding(
                padding: padding,
                child: child(index),
              ),
            ),
          );

  Widget Function(
    BuildContext context,
    Animation<double> animation,
  ) animationBuilder(
    Widget child, {
    double xOffset = 0,
    EdgeInsets padding = EdgeInsets.zero,
  }) =>
      (
        BuildContext context,
        Animation<double> animation,
      ) =>
          FadeTransition(
            opacity: Tween<double>(
              begin: 0,
              end: 1,
            ).animate(animation),
            child: SlideTransition(
              position: Tween<Offset>(
                begin: Offset(xOffset, 0.1),
                end: Offset.zero,
              ).animate(animation),
              child: Padding(
                padding: padding,
                child: child,
              ),
            ),
          );
}
